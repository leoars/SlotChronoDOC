unit UnitMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, System.ImageList, Vcl.ImgList,
  IniFiles, Vcl.ExtDlgs, PNGImage;

type
  TMain = class(TForm)
    EditArquivo: TLabeledEdit;
    bAbrirArquivo: TBitBtn;
    OD1: TOpenDialog;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    EditEvento: TLabeledEdit;
    EditData: TLabeledEdit;
    EditTempoBateria: TLabeledEdit;
    EditIntervalo: TLabeledEdit;
    ListCorrida: TListView;
    ImageList1: TImageList;
    TabSheet2: TTabSheet;
    ListQualificacao: TListView;
    StatusBar1: TStatusBar;
    BImprimirCorrida: TButton;
    EditLoja: TLabeledEdit;
    PageQualificacao: TButton;
    EditLogo: TLabeledEdit;
    bAbrirLogo: TBitBtn;
    OP1: TOpenPictureDialog;
    Logo: TImage;
    procedure bAbrirArquivoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BImprimirCorridaClick(Sender: TObject);
    procedure PageQualificacaoClick(Sender: TObject);
    procedure bAbrirLogoClick(Sender: TObject);
    procedure EditLogoChange(Sender: TObject);
  private
    { Private declarations }
    procedure ProcessaArquivo(Arquivo: TFileName);
    procedure LimpaTudo;
    function BuscaPilotoCorrida(Numero: Integer): TListItem;
    function BuscaPilotoTomada(Numero: Integer): TListItem;
    procedure CarregaValores;
    procedure SalvaValores;
    procedure CarregaConfiguracoes(Form: TForm; Dir: string; List: TListView);
    procedure SalvaConfiguracoes(Form: TForm; Dir: string; List: TListView);
    procedure ProcessaCorrida(Ini: TIniFile);
    procedure ProcessaTomada(Ini: TIniFile);
  public
    { Public declarations }
  end;

var
  Main: TMain;

const Separador = '/#-#/';

implementation

uses StringLib, Math, UnitRelatorioCorrida, UnitRelatorioQualificacao;

{$R *.dfm}

function StrToWindowState(WS: string): TWindowState;
begin
  if WS = 'wsMaximized' then
    Result := wsMaximized
  else
    if WS = 'wsMinimized' then
      Result := wsMinimized
    else
      Result := wsNormal;
end;

function WindowStateToStr(WS: TWindowState): string;
begin
  if WS = wsMaximized then
    Result := 'wsMaximized'
  else
    if WS = wsMinimized then
      Result := 'wsMinimized'
    else
      Result := 'wsNormal';
end;

procedure TMain.bAbrirArquivoClick(Sender: TObject);
begin
  if OD1.Execute(Self.Handle) then
    begin
      LimpaTudo;
      EditArquivo.Text := ExtractFileName(OD1.FileName);
      ProcessaArquivo(OD1.FileName);
    end;
end;

procedure TMain.bAbrirLogoClick(Sender: TObject);
begin
  if OP1.Execute(Self.Handle) then
    begin
      EditLogo.Text := OP1.FileName;
      if FileExists(OP1.FileName) then
        Logo.Picture.LoadFromFile(OP1.FileName);
    end;
end;

procedure TMain.BImprimirCorridaClick(Sender: TObject);
var F: TRelatorioCorrida;
begin
  F := TRelatorioCorrida.Create(Self);
  try
    F.LabelLoja.Caption := EditLoja.Text;
    F.QRLogo.Picture.Assign(Logo.Picture);
    F.LabelTitulo.Caption := EditEvento.Text;
    F.LabelPeriodo.Caption := EditData.Text;
    for var ind := 1 to ListCorrida.Items.Count do
      begin
        F.SL.Add(
          ListCorrida.Items[ind-1].Caption
          + Separador + ListCorrida.Items[ind-1].SubItems[0]
          + Separador + ListCorrida.Items[ind-1].SubItems[1]
          + Separador + ListCorrida.Items[ind-1].SubItems[2]
          + Separador + ListCorrida.Items[ind-1].SubItems[3]
          + Separador + ListCorrida.Items[ind-1].SubItems[4]
          + Separador + ListCorrida.Items[ind-1].SubItems[5]
          + Separador + ListCorrida.Items[ind-1].SubItems[6] + ';' + IntToStr(ListCorrida.Items[ind-1].SubItemImages[6]-4)
          + Separador + ListCorrida.Items[ind-1].SubItems[7]
          + Separador + ListCorrida.Items[ind-1].SubItems[8]
          + Separador + ListCorrida.Items[ind-1].SubItems[9]
          + Separador + ListCorrida.Items[ind-1].SubItems[10]
          + Separador + ListCorrida.Items[ind-1].SubItems[11]
          + Separador + ListCorrida.Items[ind-1].SubItems[12]
          + Separador + ListCorrida.Items[ind-1].SubItems[13]
          + Separador + ListCorrida.Items[ind-1].SubItems[14]
        );
      end;
    F.QR.PreviewModal;
  finally
    F.Free;
  end;
end;

function TMain.BuscaPilotoCorrida(Numero: Integer): TListItem;
var LI: TListItem;
begin
  Result := nil;
  for LI in ListCorrida.Items do
    begin
      if Integer(LI.Data) = Numero then
        begin
          Result := LI;
          Exit;
        end;
    end;
end;

function TMain.BuscaPilotoTomada(Numero: Integer): TListItem;
var LI: TListItem;
begin
  Result := nil;
  for LI in ListQualificacao.Items do
    begin
      if Integer(LI.Data) = Numero then
        begin
          Result := LI;
          Exit;
        end;
    end;
end;

procedure TMain.LimpaTudo;
begin
  EditEvento.Clear;
  Editdata.Clear;
  EditTempoBateria.Clear;
  EditIntervalo.Clear;
  ListCorrida.Clear;
  ListQualificacao.Clear;
  PageControl1.ActivePageIndex := 0;
  EditArquivo.Clear;
end;

procedure TMain.ProcessaCorrida(Ini: TIniFile);
var SL: TStringList;
    Pilotos, Corridas,
    Piloto: Integer;
    NumeroPiloto, NomePiloto: string;
    Secao: string;
    LI: TListItem;
begin
  SL := TStringList.Create;
  try
    // Geral
    EditEvento.Text := Ini.ReadString('config', 'name', '');
    EditData.Text := Ini.ReadString('config', 'date', '');
    EditTempoBateria.Text := Ini.ReadString('config', 'time_race_session', '');
    EditIntervalo.Text := Ini.ReadString('config', 'time_interval', '');
    // Pilotos
    Ini.ReadSectionValues('gp_result_pilots', SL);
    Pilotos := SL.Count;
    if SL.Count = 0 then
      begin
        Ini.ReadSectionValues('race_1_result_pilots', SL);
        Pilotos := SL.Count;
      end;
    for var Linha in SL do
      begin
        NumeroPiloto := GetField(Linha, 1, '=');
        NomePiloto := GetField(Linha, 2, '=');
        LI := ListCorrida.Items.Add;
        LI.Data := Pointer(StrToInt(NumeroPiloto));
        LI.Caption := NomePiloto;
        LI.SubItems.Add(ListCorrida.Items.Count.ToString + 'º');
        if ListCorrida.Items.Count <= 3 then
          LI.ImageIndex := ListCorrida.Items.Count - 1
        else
          LI.ImageIndex := -1;
      end;
    // Voltas
    Ini.ReadSectionValues('gp_result_laps', SL);
    if SL.Count = 0 then
      begin
        Ini.ReadSectionValues('race_1_result_laps', SL);
        Pilotos := SL.Count;
      end;
    for var Linha in SL do
      begin
        LI := BuscaPilotoCorrida(StrToInt(GetField(Linha, 1, '=')));
        if LI <> nil then
          LI.SubItems.Add(GetField(Linha, 2, '='));
      end;
    // Zona
    Ini.ReadSectionValues('gp_result_zone', SL);
    if SL.Count = 0 then
      begin
        Ini.ReadSectionValues('race_1_result_zone', SL);
        Pilotos := SL.Count;
      end;
    for var Linha in SL do
      begin
        LI := BuscaPilotoCorrida(StrToInt(GetField(Linha, 1, '=')));
        if LI <> nil then
          LI.SubItems.Add(GetField(Linha, 2, '='));
      end;
    // Média de Voltas
    Ini.ReadSectionValues('gp_result_means', SL);
    if SL.Count = 0 then
      begin
        Ini.ReadSectionValues('race_1_result_means', SL);
        Pilotos := SL.Count;
      end;
    for var Linha in SL do
      begin
        LI := BuscaPilotoCorrida(StrToInt(GetField(Linha, 1, '=')));
        if LI <> nil then
          LI.SubItems.Add(GetField(Linha, 2, '='));
      end;
    // Diferença
    Ini.ReadSectionValues('gp_result_gap', SL);
    if SL.Count = 0 then
      begin
        Ini.ReadSectionValues('race_1_result_gap', SL);
        Pilotos := SL.Count;
      end;
    for var Linha in SL do
      begin
        LI := BuscaPilotoCorrida(StrToInt(GetField(Linha, 1, '=')));
        if LI <> nil then
          LI.SubItems.Add(GetField(Linha, 2, '='));
      end;
    // Penalidades
    Ini.ReadSectionValues('gp_result_penaltys', SL);
    if SL.Count = 0 then
      begin
        Ini.ReadSectionValues('race_1_result_penaltys', SL);
        Pilotos := SL.Count;
      end;
    for var Linha in SL do
      begin
        LI := BuscaPilotoCorrida(StrToInt(GetField(Linha, 1, '=')));
        if LI <> nil then
          LI.SubItems.Add(GetField(Linha, 2, '='));
      end;
    // Melhor Volta
    Ini.ReadSectionValues('gp_result_best_times', SL);
    if SL.Count = 0 then
      begin
        Ini.ReadSectionValues('race_1_result_best_times', SL);
        Pilotos := SL.Count;
      end;
    for var Linha in SL do
      begin
        LI := BuscaPilotoCorrida(StrToInt(GetField(Linha, 1, '=')));
        if LI <> nil then
          LI.SubItems.Add(FloatToStrF(StrToFloat(GetField(Linha, 2, '='))/10000, ffFixed, 8, 4));
      end;
    // Melhor Fenda
    Ini.ReadSectionValues('gp_result_best_slots', SL);
    if SL.Count = 0 then
      begin
        Ini.ReadSectionValues('race_1_result_best_slots', SL);
        Pilotos := SL.Count;
      end;
    for var Linha in SL do
      begin
        LI := BuscaPilotoCorrida(StrToInt(GetField(Linha, 1, '=')));
        if LI <> nil then
          LI.SubItemImages[6] := StrToInt(GetField(Linha, 2, '=')) + 4;
      end;
    // Corridas
    Ini.ReadSectionValues('races', SL);
    Corridas := SL.Count;
    // SubItems das Fendas
    for LI in ListCorrida.Items do
      for var ind := 1 to 8 do
        LI.SubItems.Add('');
    //
    for var LinhaCorrida in SL do
      begin
        var Corrida := StrToInt(GetField(LinhaCorrida, 1, '='));
        for var Bateria := 1 to 15 do
          begin
            Secao := 'race_' + Corrida.ToString + '_' + Bateria.ToString;
            if Ini.SectionExists(Secao) then
              begin
                // Fendas
                for var Fenda := 1 to 8 do
                  begin
                    Piloto := Ini.ReadInteger(Secao, 'slot_' + Fenda.ToString + '_pilot_number', 0);
                    LI := BuscaPilotoCorrida(Piloto);
                    if LI <> nil then
                      begin
                        LI.SubItems[Fenda+6] := Ini.ReadString(Secao, 'slot_' + Fenda.ToString + '_laps', '')
                                                + ' / ' +
                                                FloatToStrF(StrToFloat(Ini.ReadString(Secao, 'slot_' + Fenda.ToString + '_best', ''))/10000, ffFixed, 8, 4);
                                                //+ ' / ' +
                                                //FloatToStrF(StrToFloat(Ini.ReadString(Secao, 'slot_' + Fenda.ToString + '_mean', ''))/10000, ffFixed, 8, 4);
                      end;
                  end;

              end;
          end;

      end;
  finally
    SL.Free;
  end;
end;

procedure TMain.ProcessaTomada(Ini: TIniFile);
var SL: TStringList;
    Pilotos, Corridas,
    Piloto: Integer;
    NumeroPiloto, NomePiloto: string;
    Secao: string;
    LI: TListItem;
begin
  SL := TStringList.Create;
  try
    // Geral
    // Pilotos
    Ini.ReadSectionValues('qualifying_result_pilots', SL);
    Pilotos := SL.Count;
    for var Linha in SL do
      begin
        NumeroPiloto := GetField(Linha, 1, '=');
        NomePiloto := GetField(Linha, 2, '=');
        LI := ListQualificacao.Items.Add;
        LI.Data := Pointer(StrToInt(NumeroPiloto));
        LI.Caption := NomePiloto;
        LI.SubItems.Add(ListQualificacao.Items.Count.ToString + 'º');
        if ListQualificacao.Items.Count <= 1 then
          LI.ImageIndex := ListQualificacao.Items.Count - 1
        else
          LI.ImageIndex := -1;
      end;
    // Melhor Volta
    Ini.ReadSectionValues('qualifying_result_time', SL);
    for var Linha in SL do
      begin
        LI := BuscaPilotoTomada(StrToInt(GetField(Linha, 1, '=')));
        if LI <> nil then
          LI.SubItems.Add(FloatToStrF(StrToFloat(GetField(Linha, 2, '='))/10000, ffFixed, 8, 4));
      end;
    // Diferença
    Ini.ReadSectionValues('qualifying_result_gap', SL);
    for var Linha in SL do
      begin
        LI := BuscaPilotoTomada(StrToInt(GetField(Linha, 1, '=')));
        if LI <> nil then
          LI.SubItems.Add(FloatToStrF(StrToFloat(GetField(Linha, 2, '='))/10000, ffFixed, 8, 4));
      end;
    // Voltas
    Ini.ReadSectionValues('qualifying_result_laps', SL);
    for var Linha in SL do
      begin
        LI := BuscaPilotoTomada(StrToInt(GetField(Linha, 1, '=')));
        if LI <> nil then
          LI.SubItems.Add(GetField(Linha, 2, '='));
      end;
    // Fendas
    Ini.ReadSectionValues('qualifying_slots', SL);
    for var Linha in SL do
      begin
        LI := BuscaPilotoTomada(StrToInt(GetField(Linha, 1, '=')));
        if LI <> nil then
          begin
            var Fenda := StrToInt(GetField(Linha, 2, '='));
            case Fenda of
              1: begin
                   LI.SubItems.Add('1 Vermelha');
                 end;
              2: begin
                   LI.SubItems.Add('2 Branca');
                 end;
              3: begin
                   LI.SubItems.Add('3 Verde');
                 end;
              4: begin
                   LI.SubItems.Add('4 Laranja');
                 end;
              5: begin
                   LI.SubItems.Add('5 Azul');
                 end;
              6: begin
                   LI.SubItems.Add('6 Amarela');
                 end;
              7: begin
                   LI.SubItems.Add('7 Roxa');
                 end;
              8: begin
                   LI.SubItems.Add('8 Preta');
                 end;
            end;
            LI.SubItemImages[4] := Fenda + 4;
          end;
      end;
  finally
    SL.Free;
  end;
end;

procedure TMain.PageQualificacaoClick(Sender: TObject);
var F: TRelatorioQualificacao;
begin
  F := TRelatorioQualificacao.Create(Self);
  try
    F.LabelLoja.Caption := EditLoja.Text;
    F.QRLogo.Picture.Assign(Logo.Picture);
    F.LabelTitulo.Caption := EditEvento.Text + ' (Qualificação)' ;
    F.LabelPeriodo.Caption := EditData.Text;
    for var ind := 1 to ListQualificacao.Items.Count do
      begin
        F.SL.Add(
          ListQualificacao.Items[ind-1].Caption
          + Separador + ListQualificacao.Items[ind-1].SubItems[0]
          + Separador + ListQualificacao.Items[ind-1].SubItems[1]
          + Separador + ListQualificacao.Items[ind-1].SubItems[2]
          + Separador + ListQualificacao.Items[ind-1].SubItems[3]
          + Separador + ListQualificacao.Items[ind-1].SubItems[4] + ';' + IntToStr(ListQualificacao.Items[ind-1].SubItemImages[4]-4)
        );
      end;
    F.QR.PreviewModal;
  finally
    F.Free;
  end;
end;

procedure TMain.ProcessaArquivo(Arquivo: TFileName);
var Ini: TIniFile;
begin
  try
    Ini := TIniFile.Create(Arquivo);
    ProcessaCorrida(Ini);
    ProcessaTomada(Ini);
  finally
    Ini.Free;
  end;
end;

procedure TMain.CarregaValores;
var ArquivoIni: string;
begin
  ArquivoIni := ChangeFileExt(Application.ExeName, '.dat');
  //
  with TIniFile.Create(ArquivoIni) do
    try
      // Aparência
      Left := ReadInteger('Aparencia', 'Left', Left);
      Top := ReadInteger('Aparencia', 'Top', Top);
      Width := Min(ReadInteger('Aparencia', 'Width', Width), Screen.Width);
      Height := Min(ReadInteger('Aparencia', 'Height', Height), Screen.Height);
      WindowState := StrToWindowState(ReadString('Aparencia', 'State', 'wsNoemal'));
      EditLoja.Text := ReadString('Geral', 'Loja', EditLoja.Text);
      EditLogo.Text := ReadString('Geral', 'Logo', EditLogo.Text);
      if FileExists(EditLogo.Text) then
        Logo.Picture.LoadFromFile(EditLogo.Text)
      else
        Logo.Picture.Assign(nil);
    finally
      Free;
    end;
  CarregaConfiguracoes(Self, ExtractFilePath(ArquivoIni), ListCorrida);
  CarregaConfiguracoes(Self, ExtractFilePath(ArquivoIni), ListQualificacao);
end;

procedure TMain.EditLogoChange(Sender: TObject);
begin
  if EditLogo.Text = '' then
    Logo.Picture.Assign(nil);
end;

procedure TMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SalvaValores;
end;

procedure TMain.FormCreate(Sender: TObject);
begin
  LimpaTudo;
  CarregaValores;
end;

procedure TMain.SalvaValores;
var ArquivoIni: string;
begin
  ArquivoIni := ChangeFileExt(Application.ExeName, '.dat');
  try
  with TIniFile.Create(ArquivoIni) do
      try
        // Aparência
        WriteInteger('Aparencia', 'Left', Left);
        WriteInteger('Aparencia', 'Top', Top);
        WriteInteger('Aparencia', 'Width', Min(Width, Screen.Width));
        WriteInteger('Aparencia', 'Height', Min(Height, Screen.Width));
        if WindowState = wsMinimized then
          WriteString('Aparencia', 'State', WindowStateToStr(wsNormal))
        else
          WriteString('Aparencia', 'State', WindowStateToStr(WindowState));
        WriteString('Geral', 'Loja', EditLoja.Text);
        WriteString('Geral', 'Logo', EditLogo.Text);
      finally
        Free;
      end;
  except
  end;
  SalvaConfiguracoes(Self, ExtractFilePath(ArquivoIni), ListCorrida);
  SalvaConfiguracoes(Self, ExtractFilePath(ArquivoIni), ListQualificacao);
end;

procedure TMain.CarregaConfiguracoes(Form: TForm; Dir: string; List: TListView);
var ind: Integer;
begin
    with TIniFile.Create(Dir + ChangeFileExt(ExtractFileName(Application.ExeName), '.dat')) do
    try
      if Form.BorderStyle = bsSizeable then
        begin
          Form.Width := ReadInteger(Form.Name, 'Width', Form.Width);
          Form.Height := ReadInteger(Form.Name, 'Height', Form.Height);
        end;
      for ind := 1 to List.Columns.Count do
        List.Columns.Items[ind-1].Width := ReadInteger(Form.Name + List.Name, 'Coluna ' + IntToStr(ind), List.Columns.Items[ind-1].Width);
    finally
      Free;
    end;
end;

procedure TMain.SalvaConfiguracoes(Form: TForm; Dir: string; List: TListView);
var ind: Integer;
begin
    with TIniFile.Create(Dir + ChangeFileExt(ExtractFileName(Application.ExeName), '.dat')) do
    try
      try
      if Form.BorderStyle = bsSizeable then
        begin
          WriteInteger(Form.Name, 'Width', Form.Width);
          WriteInteger(Form.Name, 'Height', Form.Height);
        end;
        for ind := 1 to List.Columns.Count do
          WriteInteger(Form.Name + List.Name, 'Coluna ' + IntToStr(ind), List.Columns.Items[ind-1].Width);
      except
      end;
    finally
      Free;
    end;
end;

end.

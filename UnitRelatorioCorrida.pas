unit UnitRelatorioCorrida;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, quickrpt, Qrctrls, grimgctrl, PNGImage;

type
  TRelatorioCorrida = class(TForm)
    QR: TQuickRep;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    LabelTitulo: TQRLabel;
    QRSysData2: TQRSysData;
    LabelPeriodo: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel3: TQRLabel;
    Média: TQRLabel;
    Diferenca: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel13: TQRLabel;
    QRPiloto: TQRLabel;
    QRClassificacao: TQRLabel;
    QRVoltas: TQRLabel;
    QRZona: TQRLabel;
    QRMedia: TQRLabel;
    QRDiferenca: TQRLabel;
    QRMelhorVolta: TQRLabel;
    Pista1Voltas: TQRLabel;
    Pista1Melhor: TQRLabel;
    ImgClassificacao: TQRImage;
    M1: TQRImage;
    M2: TQRImage;
    M3: TQRImage;
    MelhorFenda: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    Pista2Voltas: TQRLabel;
    Pista2Melhor: TQRLabel;
    Pista3Melhor: TQRLabel;
    Pista3Voltas: TQRLabel;
    Pista4Voltas: TQRLabel;
    Pista4Melhor: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    Pista5Voltas: TQRLabel;
    Pista5Melhor: TQRLabel;
    Pista6Voltas: TQRLabel;
    Pista6Melhor: TQRLabel;
    Pista7Melhor: TQRLabel;
    Pista7Voltas: TQRLabel;
    Pista8Voltas: TQRLabel;
    Pista8Melhor: TQRLabel;
    LabelCorMelhorFenda: TQRLabel;
    LabelLoja: TQRLabel;
    QRHRule1: TQRHRule;
    QRLabel11: TQRLabel;
    QRSysData1: TQRSysData;
    QRLogo: TQRImage;
    procedure QRNeedData(Sender: TObject; var MoreData: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
  private
    ind: Integer;
  public
    { Public declarations }
    SL: TStringList;
  end;

implementation

uses UnitMain, StringLib, System.UITypes;

{$R *.DFM}

procedure TRelatorioCorrida.DetailBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
var Melhor, Pista: string;
begin
  case ind of
    1: ImgClassificacao.Picture.Assign(M1.Picture);
    2: ImgClassificacao.Picture.Assign(M2.Picture);
    3: ImgClassificacao.Picture.Assign(M3.Picture);
  else
    ImgClassificacao.Picture.Assign(nil);
  end;
  //
  QRPiloto.Caption := GetField(SL[ind-1], 1, Separador);
  QRClassificacao.Caption := GetField(SL[ind-1], 2, Separador) + ' ';
  QRVoltas.Caption := GetField(SL[ind-1], 3, Separador);
  QRZona.Caption := GetField(SL[ind-1], 4, Separador);
  QRMedia.Caption := GetField(SL[ind-1], 5, Separador);
  QRDiferenca.Caption := GetField(SL[ind-1], 6, Separador);
  //QRDescontos.Caption := GetField(SL[ind-1], 7, Separador);
  //
  Melhor := GetField(SL[ind-1], 8, Separador);
  QRMelhorVolta.Caption := GetField(Melhor, 1, ';') + ' ';
  case StrToInt(GetField(Melhor, 2, ';')) of
    1: begin
         MelhorFenda.Brush.Color := TColors.Red;
         LabelCorMelhorFenda.Caption := '1 Vermelha';
         LabelCorMelhorFenda.Font.Color := clBlack;
       end;
    2: begin
         MelhorFenda.Brush.Color := TColors.White;
         LabelCorMelhorFenda.Caption := '2 Branca';
         LabelCorMelhorFenda.Font.Color := clBlack;
       end;
    3: begin
         MelhorFenda.Brush.Color := TColors.Green;
         LabelCorMelhorFenda.Caption := '3 Verde';
         LabelCorMelhorFenda.Font.Color := clWhite;
       end;
    4: begin
         MelhorFenda.Brush.Color := TColors.Orange;
         LabelCorMelhorFenda.Caption := '4 Laranja';
         LabelCorMelhorFenda.Font.Color := clBlack;
       end;
    5: begin
         MelhorFenda.Brush.Color := TColors.Blue;
         LabelCorMelhorFenda.Caption := '5 Azul';
         LabelCorMelhorFenda.Font.Color := clWhite;
       end;
    6: begin
         MelhorFenda.Brush.Color := TColors.Yellow;
         LabelCorMelhorFenda.Caption := '6 Amarela';
         LabelCorMelhorFenda.Font.Color := clBlack;
       end;
    7: begin
         MelhorFenda.Brush.Color := TColors.Purple;
         LabelCorMelhorFenda.Caption := '7 Roxa';
         LabelCorMelhorFenda.Font.Color := clWhite;
       end;
    8: begin
         MelhorFenda.Brush.Color := TColors.Black;
         LabelCorMelhorFenda.Caption := '8 Preta';
         LabelCorMelhorFenda.Font.Color := clWhite;
       end;
  end;
  //
  for var P := 1 to 8 do
    begin
      Pista := GetField(SL[ind-1], P+8, Separador);
      TQRLabel(FindComponent('Pista' + P.ToString + 'Voltas')).Caption := GetField(Pista, 1, ' / ');
      TQRLabel(FindComponent('Pista' + P.ToString + 'Melhor')).Caption := GetField(Pista, 2, ' / ');

    end;
end;

procedure TRelatorioCorrida.FormCreate(Sender: TObject);
begin
  SL := TStringList.Create;
  ind := 0;
end;

procedure TRelatorioCorrida.FormDestroy(Sender: TObject);
begin
  SL.Free;
end;

procedure TRelatorioCorrida.QRBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  ind := 0;
end;

procedure TRelatorioCorrida.QRNeedData(Sender: TObject; var MoreData: Boolean);
begin
  MoreData := ind < SL.Count;
  Inc(ind);
end;

end.





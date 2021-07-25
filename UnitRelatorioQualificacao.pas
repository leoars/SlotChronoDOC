unit UnitRelatorioQualificacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, quickrpt, Qrctrls, grimgctrl, PNGImage;

type
  TRelatorioQualificacao = class(TForm)
    QR: TQuickRep;
    DetailBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    LabelTitulo: TQRLabel;
    LabelPeriodo: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel9: TQRLabel;
    Diferenca: TQRLabel;
    QRLabel7: TQRLabel;
    QRPiloto: TQRLabel;
    QRClassificacao: TQRLabel;
    QRVoltas: TQRLabel;
    QRDiferenca: TQRLabel;
    QRMelhorVolta: TQRLabel;
    ImgClassificacao: TQRImage;
    M1: TQRImage;
    LabelLoja: TQRLabel;
    QRHRule1: TQRHRule;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRLabel3: TQRLabel;
    QRLogo: TQRImage;
    QRFenda: TQRLabel;
    SFenda: TQRShape;
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

procedure TRelatorioQualificacao.DetailBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  case ind of
    1: ImgClassificacao.Picture.Assign(M1.Picture);
  else
    ImgClassificacao.Picture.Assign(nil);
  end;
  //
  QRPiloto.Caption := ' ' + GetField(SL[ind-1], 1, Separador);
  QRClassificacao.Caption := GetField(SL[ind-1], 2, Separador) + ' ';
  QRVoltas.Caption := GetField(SL[ind-1], 5, Separador);
  QRDiferenca.Caption := GetField(SL[ind-1], 4, Separador);
  QRMelhorVolta.Caption := GetField(SL[ind-1], 3, Separador);
  //
  QRFenda.Caption := GetField(GetField(SL[ind-1], 6, Separador), 1, ';') + ' ';
  case StrToInt(GetField(GetField(SL[ind-1], 6, Separador), 2, ';')) of
    1: begin
         SFenda.Brush.Color := TColors.Red;
       end;
    2: begin
         SFenda.Brush.Color := TColors.White;
       end;
    3: begin
         SFenda.Brush.Color := TColors.Green;
       end;
    4: begin
         SFenda.Brush.Color := TColors.Orange;
       end;
    5: begin
         SFenda.Brush.Color := TColors.Blue;
       end;
    6: begin
         SFenda.Brush.Color := TColors.Yellow;
       end;
    7: begin
         SFenda.Brush.Color := TColors.Purple;
       end;
    8: begin
         SFenda.Brush.Color := TColors.Black;
       end;
  end;
end;

procedure TRelatorioQualificacao.FormCreate(Sender: TObject);
begin
  SL := TStringList.Create;
  ind := 0;
end;

procedure TRelatorioQualificacao.FormDestroy(Sender: TObject);
begin
  SL.Free;
end;

procedure TRelatorioQualificacao.QRBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  ind := 0;
end;

procedure TRelatorioQualificacao.QRNeedData(Sender: TObject; var MoreData: Boolean);
begin
  MoreData := ind < SL.Count;
  Inc(ind);
end;

end.


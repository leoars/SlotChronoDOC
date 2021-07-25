program SlotChronoDoc;

uses
  Vcl.Forms,
  UnitMain in 'UnitMain.pas' {Main},
  StringLib in 'StringLib.pas',
  UnitRelatorioQualificacao in 'UnitRelatorioQualificacao.pas' {RelatorioQualificacao},
  UnitRelatorioCorrida in 'UnitRelatorioCorrida.pas' {RelatorioCorrida};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMain, Main);
  Application.Run;
end.

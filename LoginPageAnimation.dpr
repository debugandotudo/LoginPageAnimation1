program LoginPageAnimation;

uses
  System.StartUpCopy,
  FMX.Forms,
  UnitLoginPage in 'UnitLoginPage.pas' {frmLoginPage};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmLoginPage, frmLoginPage);
  Application.Run;
end.

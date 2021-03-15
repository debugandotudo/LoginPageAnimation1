program LoginPageAnimation;

uses
  System.StartUpCopy,
  FMX.Forms,
  UnitLoginPage in 'UnitLoginPage.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

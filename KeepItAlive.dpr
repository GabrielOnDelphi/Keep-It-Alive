program KeepItAlive;

uses
  fastmm4,
  Forms,
  ccAppData,
  MainForm in 'MainForm.pas' {frmTester};

{$R *.res}

begin
  Application.Initialize;
  Application.Initialize;
  AppData:= TAppData.Create('Cubic Keep It Alive_');
  AppData.CreateMainForm(TfrmTester, frmTester, TRUE);    // Main form
  Application.Run;
end.

UNIT MainForm;

INTERFACE

USES
  WinApi.Windows,  WinApi.Messages, System.SysUtils, System.Classes, Vcl.StdCtrls, VCL.Forms, Vcl.Controls, Vcl.Samples.Spin,
  cvRichEdit, Vcl.ComCtrls, ccCore, ccINIFile, FormLog, Vcl.ExtCtrls, ccappdata, cvCheckBox, cvPathEdit,
  CoolTrayIcon, Vcl.AppEvnts, InternetLabel, cvSpinEdit, cvGroupBox;

TYPE
 TfrmTester = class(TForm)
    Timer        : TTimer;
    chkAutoStart : TCubicCheckBox;
    chkRestart   : TCubicCheckBox;
    btnRunNow    : TButton;
    Button1      : TButton;
    Path         : TCubicPathEdit;
    TrayIcon     : TCoolTrayIcon;
    AppEvents    : TApplicationEvents;
    lblHome      : TInternetLabel;
    CubicGroupBox1: TCubicGroupBox;
    spnDelay: TCubicSpinEditSplit;
    chkSelfStart: TCubicCheckBox;
    procedure FormCreate         (Sender: TObject);
    procedure FormDestroy        (Sender: TObject);
    procedure TimerTimer         (Sender: TObject);
    procedure StartTimer         (Sender: TObject);
    procedure btnRunNowClick     (Sender: TObject);
    procedure Button1Click       (Sender: TObject);
    procedure TrayIconClick      (Sender: TObject);
    procedure AppEventsMinimize  (Sender: TObject);
    procedure spnDelaySpinChange (Sender: TObject);
    procedure chkSelfStartClick(Sender: TObject);
  protected
    BootStarted: Boolean;
  private
    procedure LateInitialize(VAR MSG: TMessage); message MSG_LateAppInit;
    function RunProgram: Boolean;
  public
 end;

VAR
   frmTester: TfrmTester;

IMPLEMENTATION  {$R *.dfm}

USES csSystem, ShellAPI, cvIniFile, ccIO, cmDebugger, csExecuteProc;






{--------------------------------------------------------------------------------------------------
   APP START/CLOSE
--------------------------------------------------------------------------------------------------}
procedure TfrmTester.FormCreate(Sender: TObject);
begin
  //WindowState:= wsMinimized;
end;


procedure TfrmTester.LateInitialize;
begin
  BootStarted:= FALSE;
  LoadForm(Self);

  spnDelaySpinChange(Self);
  chkSelfStartClick(Self);
end;


procedure TfrmTester.StartTimer(Sender: TObject);
begin
  Timer.Enabled:= (chkAutoStart.Checked AND NOT BootStarted) OR chkRestart.Checked;
end;


procedure TfrmTester.FormDestroy(Sender: TObject);
begin
  SaveForm(Self);
end;






{-------------------------------------------------------------------------------------------------------------
   MAIN CODE
-------------------------------------------------------------------------------------------------------------}
function TfrmTester.RunProgram: Boolean;
begin
  Caption:= TimeToString(Now, TRUE)+ ' - Starting program';
  Result:= ExecuteProc(Path.Path);
  if NOT Result then
    begin
      AppData.Restore;
      BipError;
    end;
end;


procedure TfrmTester.TimerTimer(Sender: TObject);
begin
  if NOT BootStarted
  AND chkAutoStart.Checked
  then
   begin
     RunProgram;
     BootStarted:= TRUE;
   end
  else
    // Make sure we don't run the program twice
    if chkRestart.Checked then
      if NOT csSystem.ProcessRunning(Path.Path)
      then RunProgram;

  // Stop the timer if necessary
  StartTimer(Sender);
end;


procedure TfrmTester.btnRunNowClick(Sender: TObject);
begin
  if NOT csSystem.ProcessRunning(Path.Path)
  then RunProgram;
end;


procedure TfrmTester.Button1Click(Sender: TObject);
begin
  //
end;


procedure TfrmTester.spnDelaySpinChange(Sender: TObject);
begin
  Timer.Interval:= spnDelay.Value * 1000;
end;




{-------------------------------------------------------------------------------------------------------------
   TRAY & Settings
-------------------------------------------------------------------------------------------------------------}
procedure TfrmTester.TrayIconClick(Sender: TObject);
begin
  TrayIcon.PutIconOnlyInTask;
end;


procedure TfrmTester.AppEventsMinimize(Sender: TObject);
begin
  TrayIcon.PutIconOnlyInTray;
end;


procedure TfrmTester.chkSelfStartClick(Sender: TObject);
begin
  AppData.RunSelfAtWinStartUp(chkSelfStart.Checked);
end;


end.

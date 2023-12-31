object frmTester: TfrmTester
  Left = 450
  Top = 311
  Anchors = []
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Keep it alive'
  ClientHeight = 223
  ClientWidth = 504
  Color = clBtnFace
  Constraints.MinHeight = 210
  Constraints.MinWidth = 520
  DoubleBuffered = True
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  ScreenSnap = True
  ShowHint = True
  SnapBuffer = 4
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  DesignSize = (
    504
    223)
  PixelsPerInch = 96
  TextHeight = 17
  object lblHome: TInternetLabel
    Left = 0
    Top = 208
    Width = 504
    Height = 15
    Cursor = crHandPoint
    Align = alBottom
    Caption = 'GabrielMoraru.com'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    Link = 'https://gabrielmoraru.com/'
    LinkHint = False
    Visited = False
    VisitedColor = clPurple
    NotVisitedColor = clBlue
    OverColor = clRed
  end
  object chkAutoStart: TCubicCheckBox
    Left = 12
    Top = 70
    Width = 194
    Height = 17
    Hint = 
      'The Delay specifies when to start the program, after Windows sta' +
      'rt uo'
    Caption = 'Start program at Win startup'
    TabOrder = 0
    OnClick = StartTimer
    AutoSize = True
  end
  object chkRestart: TCubicCheckBox
    Left = 12
    Top = 102
    Width = 176
    Height = 17
    Hint = 
      'Restart the program if it was closed or if it crashed.'#13#10'The Dela' +
      'y specifies how often we check for that program.'
    Caption = 'Restart program on crash'
    TabOrder = 1
    OnClick = StartTimer
    AutoSize = True
  end
  object btnRunNow: TButton
    Left = 12
    Top = 163
    Width = 92
    Height = 28
    Hint = 'Start the program now, it if is not running already'
    Caption = 'Run now'
    TabOrder = 2
    OnClick = btnRunNowClick
  end
  object Button1: TButton
    Left = 110
    Top = 163
    Width = 92
    Height = 28
    Hint = 'Kill program'
    Caption = 'Kill program'
    Enabled = False
    TabOrder = 3
    OnClick = Button1Click
  end
  object Path: TCubicPathEdit
    AlignWithMargins = True
    Left = 6
    Top = 6
    Width = 492
    Height = 48
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Path = 'c:\windows\NOTEPAD.EXE'
    InputType = itFile
    ShowCreateBtn = False
    ShowApplyBtn = True
    Align = alTop
    Caption = 'Program path'
    TabOrder = 4
  end
  object CubicGroupBox1: TCubicGroupBox
    Left = 239
    Top = 69
    Width = 247
    Height = 128
    Anchors = [akTop, akRight]
    Caption = 'Settings'
    TabOrder = 5
    object spnDelay: TCubicSpinEditSplit
      AlignWithMargins = True
      Left = 34
      Top = 38
      Width = 118
      Height = 23
      BevelOuter = bvNone
      ParentBackground = False
      ShowCaption = False
      TabOrder = 0
      Spin.AlignWithMargins = True
      Spin.Left = 41
      Spin.Top = 0
      Spin.Width = 50
      Spin.Height = 27
      Spin.Margins.Top = 0
      Spin.Margins.Bottom = 0
      Spin.Align = alLeft
      Spin.MaxValue = 1000000
      Spin.MinValue = 1
      Spin.TabOrder = 0
      Spin.Value = 10
      Spin.OnChange = spnDelaySpinChange
      Caption1 = 'Delay'
      Caption2 = 'sec'
      Value = 10
    end
    object chkSelfStart: TCubicCheckBox
      Left = 34
      Top = 86
      Width = 78
      Height = 17
      Hint = 
        'Start the Keep It Alive at computer boot so it can check if the ' +
        'specified program is alive or not'
      Caption = 'Autostart'
      TabOrder = 1
      OnClick = chkSelfStartClick
      AutoSize = True
    end
  end
  object Timer: TTimer
    Interval = 10000
    OnTimer = TimerTimer
    Left = 382
    Top = 94
  end
  object TrayIcon: TCoolTrayIcon
    CycleInterval = 0
    Icon.Data = {
      0000010001002020200000000000A81000001600000028000000200000004000
      0000010020000000000000100000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0002000000060000000B0000000D0000000D0000000D0000000D0000000D0000
      000D0000000D0000000D0000000D0000000D0000000D0000000D0000000D0000
      000D0000000D0000000D0000000D0000000D0000000D0000000D0000000D0000
      000D0000000D0000000D0000000D0000000D0000000B00000006000000020000
      0006000000160000002300000026000000260000002600000026000000260000
      0026000000260000002600000026000000260000002600000026000000260000
      0026000000260000002600000026000000260000002600000026000000260000
      0026000000260000002600000026000000260000002300000016000000068B86
      848185817EF7888481FF888481FF888481FF888481FF888481FF888481FF8884
      81FF888481FF888481FF888481FF888481FF888481FF888481FF888481FF8A86
      83FF8C8986FF8F8C89FF8F8A87FF8B8785FF888482FF888481FF888481FF8884
      81FF888481FF888481FF888481FF888481FF79757394000000230000000B8884
      81FFF7F2EFFFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9
      F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9
      F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9
      F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FF888481FF000000260000000D8884
      81FFF7F2EFFFFCFCFCFFF9FDFFFFF4F8FAFFFAFFFFFFF7FCFFFFF5F9FCFFF5F9
      FBFFF8FDFFFFFEFFFFFFFDFFFFFFFCFFFFFFFAFFFFFFF9FFFFFFF6FBFEFFF5F6
      F6FFF6F7F8FFF6F7F8FFF6F6F7FFF4F5F4FFF2F3F3FFF1F2F2FFF0F1F0FFF0F1
      F1FFF0F1F1FFF0F1F1FFF1F2F3FFFBF9F6FF888481FF000000260000000D8884
      81FFF7F3F1FFFBF9F6FFFAFBFCFFE6E6E7FFE6E6E7FFE6E6E7FFE6E6E7FFE6E6
      E7FFE6E6E7FFE6E6E7FFE6E6E7FFE6E6E7FFE6E6E7FFE6E6E7FFE6E6E7FFF2F3
      F5FFF6F7F8FFF7F8F9FFF6F7F8FFF5F6F7FFF3F4F4FFF2F3F2FFF0F0F0FFEDEE
      EEFFECECECFFECECECFFEDEDEEFFFBF9F6FF888481FF000000260000000D8884
      81FFF8F6F5FFFBF9F6FFAEA3A2FFD1BDBCFFD1BDBCFFD1BDBCFFD1BDBCFFD1BD
      BCFFD1BDBCFFD1BDBCFFD1BDBCFFD1BDBCFFD1BDBCFFADA1A0FFE6E6E7FFF4F5
      F7FFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFF4F4F5FFF1F2
      F3FFEEEEEEFFEDEDEDFFEDEDEEFFFBF9F6FF888481FF000000260000000D8884
      81FFF7F6F3FFFBF9F6FFD1BDBCFF84A057FF82A259FF80A55AFF7EA75CFF7BA9
      5EFF79AB60FF77AD62FF75AF63FF73B165FF71B366FFD1BDBCFFE6E6E7FFF2F6
      F8FFF6F7F8FFF7F8F9FFF7F8F9FFF7F8F9FFF7F8F9FFF7F8F9FFF6F7F8FFF4F5
      F5FFEFF0F1FFEDEDEDFFEDEEEEFFFBF9F6FF888481FF000000260000000D8884
      81FFF7F5F3FFFBF9F6FFD1BDBCFF879C54FF859F56FF83A158FF81A45AFF7FA6
      5CFF7CA85DFF7AAB5FFF78AD61FF76AF63FF74B164FFD1BDBCFFE6E6E7FFF3F6
      F8FFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFF7F7F8FFF4F6
      F6FFF0F1F1FFEFEFEFFFEEEFF0FFFBF9F6FF888481FF000000260000000D8884
      81FFF7F5F3FFFBF9F6FFD1BDBCFF8A9852FF889B53FF869E55FF84A057FF82A3
      59FF7FA55BFF7DA75DFF7BAA5FFF79AC60FF76AE62FFD1BDBCFFE6E6E7FFF4F6
      F7FFF5F6F7FFF6F7F8FFF7F8F9FFF7F8F9FFF7F8F9FFF7F8F9FFF6F7F8FFF5F6
      F6FFF2F2F2FFF0F0F0FFEFF0F1FFFBF9F6FF888481FF000000260000000D8884
      81FFF7F5F3FFFBF9F6FFD1BDBCFF8C9550FF8B9751FF899A53FF879C55FF859F
      56FF83A258FF80A45AFF7EA65CFF7CA95EFF79AB60FFD1BDBCFFE6E6E7FFF4F7
      F9FFF6F7F9FFF7F8F8FFF7F8F9FFF7F8F9FFF7F8F9FFF7F8F9FFF7F8F9FFF7F8
      F9FFF7F8F9FFF7F8F9FFF7F8F9FFFBF9F6FF888481FF000000260000000D8884
      81FFF7F5F3FFFBF9F6FFD1BDBCFF8F904DFF8D934FFF8B9651FF8A9952FF889B
      54FF869E56FF84A157FF81A359FF7FA55BFF7DA85DFFD1BDBCFFE6E6E7FFF4F7
      F9FFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFF7F8F9FFF7F8
      F9FFF7F8F9FFF7F8F9FFF7F8F9FFFBF9F6FF888481FF000000260000000D8884
      81FFF7F5F3FFFBF9F6FFD1BDBCFF918C4BFF908F4DFF8E924EFF8C9550FF8A98
      51FF899A53FF879D55FF84A057FF82A259FF80A55AFFD1BDBCFFE6E6E7FFF4F5
      F9FFF8F9FAFFF7F8F9FFF7F8F9FFF7F8F9FFF7F8F9FFF7F8F9FFF7F8F9FFF7F8
      F9FFF7F8F9FFF7F8F9FFF7F8F9FFFBF9F6FF888481FF000000260000000D8884
      81FFF6F5F3FFFBF9F6FFD1BDBCFF948749FF928A4AFF908E4CFF8F914EFF8D94
      4FFF8B9751FF899952FF879C54FF859F56FF83A158FFD1BDBCFFE6E6E7FFF4F6
      F9FFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFF7F8F9FFF7F8
      F9FF6EB669FF6EB669FFF7F8F9FFFBF9F6FF888481FF000000260000000D8884
      81FFF6F4F3FFFBF9F6FFD1BDBCFF968247FF948648FF93894AFF918D4BFF8F90
      4DFF8E934FFF8C9650FF8A9852FF889B53FF869E55FFD1BDBCFFE6E6E7FFF4F7
      FAFFF8F8F8FFF5F6F7FFF7F8F9FFF7F8F9FFF7F8F9FFF7F8F9FFF7F8F9FFF7F8
      F9FF6EB669FF6EB669FFF7F8F9FFFBF9F6FF888481FF000000260000000D8884
      81FFF6F4F2FFFBF9F6FFD1BDBCFFB29E73FF99854CFF958447FF938849FF928B
      4BFF908E4CFF8E924EFF8C9550FF8B9751FF899A53FFD1BDBCFFE6E6E7FFF3F6
      FAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFF7F8F9FFF7F8
      F9FF80A55BFF6EB669FFF7F8F9FFFBF9F6FF888481FF000000260000000D8884
      81FFF6F4F2FFFBF9F6FFD1BDBCFFBCA682FFB9A57FFFA89464FF9B884FFF9486
      48FF928A4AFF918D4CFF8F904DFF8D934FFF8B9651FFD1BDBCFFE6E6E7FFF4F6
      FAFFF7F8F9FFF6F7F8FFF7F8F8FFF6F7F8FFF6F7F8FFF7F8F9FFF7F8F9FFF7F8
      F9FF8B9751FF80A55BFFF7F8F9FFFBF9F6FF888481FF000000260000000D8884
      81FFF7F6F4FFFBF9F6FFD1BDBCFFB99D78FFB89F7AFFB7A17AFFB6A47CFFB09F
      72FFAB9F6FFFA69D69FF9F9B63FF9D9C62FF9CA064FFD1BDBCFFE6E6E7FFF5F6
      FAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFF7F8F9FFF7F8
      F9FF958347FF8B9751FFF7F8F9FFFBF9F6FF888481FF000000260000000D8884
      81FFFCFCFDFFFBF9F6FFD1BDBCFFB5936EFFB4956EFFB3976FFFB39A71FFB19C
      71FFB09F73FFAFA174FFAEA475FFADA676FFABA978FFD1BDBCFFE6E6E7FFF4F7
      FAFFF7F8F9FFF6F8F8FFF7F8F9FFF6F7F8FFF7F8F9FFF7F8F9FFF7F8F9FFF7F8
      F9FFA06A3CFF958347FFF7F8F9FFFBF9F6FF888481FF000000260000000D8A86
      84F6FCFCFCFFFBF9F6FFD1BDBCFFB18861FFB08A62FFAF8B62FFAE8E64FFAD91
      65FFAC9366FFAA9667FFA99969FFA89C6AFFA79F6BFFD1BDBCFFE6E6E7FFF4F7
      F9FFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFF7F8F9FFF7F8
      F9FFA06A3CFFA06A3CFFF7F8F9FFFBF9F6FF888481FF000000260000000D8A86
      84F6FCFCFCFFFBF9F6FFD1BDBCFFAC7D54FFAB7E55FFAA8056FFA98257FFA885
      58FFA88759FFA68B5BFFA58D5BFFA3915DFFA2935EFFD1BDBCFFE6E6E7FFF5F7
      F9FFF7F8F9FFF7F8F9FFF7F8F9FFF7F8F9FFF7F8F9FFF7F8F9FFF7F8F9FFF7F8
      F9FFA06A3CFFA06A3CFFF7F8F9FFFBF9F6FF888481FF000000260000000D8A86
      84F6FCFCFBFFFBF9F6FFC6BABAFFD1BDBCFFD1BDBCFFD1BDBCFFD1BDBCFFD1BD
      BCFFD1BDBCFFD1BDBCFFD1BDBCFFD1BDBCFFD1BDBCFFC6BBBAFFFAFBFCFFFAFB
      FCFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFF7F8F9FFF7F8
      F9FFA06A3CFFA06A3CFFF7F8F9FFFBF9F6FF888481FF000000260000000D8A86
      84F6FBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9
      F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9
      F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9
      F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FF888481FF000000260000000D8B86
      84F6F7F5F3FFF8F9FAFFF7F8F9FFF7F8F9FFF7F8F9FFF7F8F9FFF7F8F9FFF7F8
      F9FFF7F8F9FFF7F8F9FFF7F8F9FFF7F8F9FFF7F8F9FFF7F8F9FFF7F8F9FFF8F8
      F9FFF7F8F9FFF7F8F8FFF7F8F8FFF7F8F8FFF7F8F8FFF7F8F8FFF7F8F9FFF7F8
      F9FFF7F8F9FFF7F8F9FFF8F9FAFFFBF9F6FF888481FF000000260000000D8E8A
      88F6CBC9C7FFCBC9C7FFCBC9C7FFCBC9C7FFCBC9C7FFCBC9C7FFCBC9C7FFCBC9
      C7FFCBC9C7FFCBC9C7FFCBC9C7FFCBC9C7FFCBC9C7FFCBC9C7FFCBC9C7FFCBC9
      C7FFCCCAC9FFCDCBCAFFCDCCCAFFCDCCCAFFCDCBC9FFCCCAC8FFCCCAC8FFCBC9
      C7FFCBC9C7FFCBC9C7FFCBC9C7FFCBC9C7FF888481FF000000230000000B8B89
      87FEE6DED8FFDFD7D1FFDED7D1FFDED7D1FFDED7D1FFDED7D1FFDED7D1FFDED7
      D1FFDED7D1FFDED7D1FFDED7D1FFDED7D1FFDED7D1FFDED7D1FFDED7D1FFDED7
      D1FFDED7D1FFDED7D1FFDED7D1FFDED7D1FFDED7D1FFDED7D1FF917968FFDED7
      D1FF917968FFDED7D1FF917968FFDED7D1FF888481FF0000001600000006918C
      897C888481FF888481FF888481FF888481FF888481FF888481FF888481FF8884
      81FF888481FF888481FF888481FF888481FF888481FF888481FF888481FF8884
      81FF888481FF888481FF888481FF888481FF888481FF888481FF888481FF8884
      81FF888481FF888481FF888481FF888481FF8B86848100000006000000020000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF}
    IconIndex = 0
    OnClick = TrayIconClick
    Left = 383
    Top = 146
  end
  object AppEvents: TApplicationEvents
    OnMinimize = AppEventsMinimize
    Left = 386
    Top = 57
  end
end

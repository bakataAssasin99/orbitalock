object Form1: TForm1
  Left = 234
  Top = 24
  BorderStyle = bsDialog
  Caption = 'proRFL.DLL'#28436#31034#31243#24207
  ClientHeight = 656
  ClientWidth = 848
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Label10: TLabel
    Left = 16
    Top = 128
    Width = 137
    Height = 20
    Alignment = taRightJustify
    AutoSize = False
    Caption = #37202#24215#26631#35782'[coID]'
    Font.Charset = GB2312_CHARSET
    Font.Color = clBlack
    Font.Height = -14
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object Label17: TLabel
    Left = 0
    Top = 448
    Width = 169
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = #21345#25968#25454'[cardHexStr]'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 848
    Height = 49
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'proUSB'#38376#38145#25509#21475#20989#25968#20363#31243
    Font.Charset = GB2312_CHARSET
    Font.Color = clBlue
    Font.Height = -35
    Font.Name = #38582#20070
    Font.Style = []
    ParentFont = False
    Layout = tlCenter
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 48
    Width = 489
    Height = 73
    Caption = 'USB'#21475#25805#20316
    Font.Charset = GB2312_CHARSET
    Font.Color = clPurple
    Font.Height = -14
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Button1: TButton
      Left = 16
      Top = 24
      Width = 313
      Height = 33
      Caption = #31532#19968#27493#65306#25171#24320#31471#21475'[initializeUSB]'
      TabOrder = 0
      OnClick = Button1Click
    end
    object RadioButton3: TRadioButton
      Left = 352
      Top = 16
      Width = 129
      Height = 25
      Caption = #26377#39537#21457#21345#22120
      TabOrder = 1
      OnClick = RadioButton3Click
    end
    object RadioButton4: TRadioButton
      Left = 352
      Top = 40
      Width = 129
      Height = 25
      Caption = 'proUSB'
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = RadioButton4Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 168
    Width = 489
    Height = 241
    BiDiMode = bdRightToLeftNoAlign
    Caption = #23458#20154#21345#20449#24687'['#27880#65306#20197#19979#36755#20837#26694#27809#26377#20570#26377#25928#24615#26816#26597#65292#35831#25353#25552#31034#36755#20837']'
    Font.Charset = GB2312_CHARSET
    Font.Color = clPurple
    Font.Height = -14
    Font.Name = #23435#20307
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    object Label13: TLabel
      Left = 16
      Top = 88
      Width = 169
      Height = 25
      Alignment = taRightJustify
      AutoSize = False
      Caption = #38145#21495'[LockNo]'
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 48
      Top = 112
      Width = 6
      Height = 12
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 8
      Top = 112
      Width = 473
      Height = 14
      Alignment = taCenter
      AutoSize = False
      Caption = #38145#21495#32452#25104#65306#26635#21495'2'#20301','#23618#21495'2'#20301','#25151#38388#32534#21495'2'#20301','#31532#20108#25151#38388#32534#21495'2'#20301
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 8
      Top = 144
      Width = 169
      Height = 25
      Alignment = taRightJustify
      AutoSize = False
      Caption = #36864#25151#26102#38388'[eTime]'
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 288
      Top = 184
      Width = 193
      Height = 22
      AutoSize = False
      Caption = #65288'0-255'#65289
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 288
      Top = 88
      Width = 193
      Height = 14
      AutoSize = False
      Caption = '(01020399'#34920#31034'1'#26635'02'#23618'03'#25151')'
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 8
      Top = 184
      Width = 169
      Height = 25
      Alignment = taRightJustify
      AutoSize = False
      Caption = #23458#20154#20195'[Dai]'
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 16
      Top = 48
      Width = 169
      Height = 25
      Alignment = taRightJustify
      AutoSize = False
      Caption = #21345#21495'[CardNo]'
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 112
      Top = 64
      Width = 65
      Height = 22
      AutoSize = False
      Caption = #65288'0-15'#65289
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object edt_LockNo: TEdit
      Left = 184
      Top = 88
      Width = 97
      Height = 20
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = '01020399'
    end
    object edt_Dai: TEdit
      Left = 184
      Top = 184
      Width = 97
      Height = 20
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Text = '0'
    end
    object DateTimePicker1: TDateTimePicker
      Left = 184
      Top = 144
      Width = 129
      Height = 22
      Date = 39106.698791226850000000
      Time = 39106.698791226850000000
      TabOrder = 2
    end
    object DateTimePicker2: TDateTimePicker
      Left = 312
      Top = 144
      Width = 65
      Height = 22
      Date = 39106.699220914350000000
      Format = 'HH:mm'
      Time = 39106.699220914350000000
      Kind = dtkTime
      TabOrder = 3
    end
    object BitBtn4: TBitBtn
      Left = 304
      Top = 24
      Width = 177
      Height = 41
      Caption = #24674#22797#21040#40664#35748#20540
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn4Click
    end
    object RadioButton1: TRadioButton
      Left = 136
      Top = 216
      Width = 113
      Height = 17
      Caption = #21487#20197#24320#21453#38145
      Checked = True
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      TabStop = True
    end
    object RadioButton2: TRadioButton
      Left = 256
      Top = 216
      Width = 113
      Height = 17
      Caption = #19981#33021#24320#21453#38145
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object edt_CardNo: TEdit
      Left = 184
      Top = 48
      Width = 97
      Height = 20
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      Text = '0'
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 472
    Width = 833
    Height = 153
    Caption = #20351#29992#35828#26126
    Font.Charset = GB2312_CHARSET
    Font.Color = clPurple
    Font.Height = -14
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label2: TLabel
      Left = 16
      Top = 24
      Width = 465
      Height = 25
      AutoSize = False
      Caption = '1,USB'#31471#21475#25171#24320#20043#21518#65292#25165#33021#36827#34892#21457#21345#35835#21345#31561#25805#20316#65307'   '
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 56
      Width = 465
      Height = 25
      AutoSize = False
      Caption = '2,'#25353#35828#26126#27491#30830#22635#20889#30456#24212#20449#24687#26159#33021#21542#21457#21345#25104#21151#30340#20851#38190#27493#39588#65307' '
      Font.Charset = GB2312_CHARSET
      Font.Color = clGreen
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 88
      Width = 465
      Height = 25
      AutoSize = False
      Caption = '3,'#23458#20154#20195#65292#26159#23454#29616#21518#21345#35206#30422#21069#21345#21151#33021#30340#65292#19968#33324#40664#35748#20026'0'#21363#21487#65307
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 16
      Top = 120
      Width = 465
      Height = 20
      AutoSize = False
      Caption = '4,'#35835'DLL'#29256#26412#20026#27979#35797#21160#24577#24211#65292#19981#28041#21450#31471#21475#25805#20316#12290
      Font.Charset = GB2312_CHARSET
      Font.Color = clGreen
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
  end
  object edt_coID: TEdit
    Left = 168
    Top = 130
    Width = 73
    Height = 20
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    Text = '0'
  end
  object Button3: TButton
    Left = 256
    Top = 128
    Width = 233
    Height = 25
    Caption = #20174#29616#26377#21345#29255#35835#21462#37202#24215#26631#35782
    Enabled = False
    TabOrder = 4
    OnClick = Button3Click
  end
  object GroupBox4: TGroupBox
    Left = 504
    Top = 128
    Width = 337
    Height = 313
    Caption = #26368#24120#29992#20989#25968
    Enabled = False
    TabOrder = 5
    object BitBtn1: TBitBtn
      Left = 16
      Top = 16
      Width = 305
      Height = 33
      Caption = #34562#40483'[Buzzer]'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn3: TBitBtn
      Left = 16
      Top = 48
      Width = 305
      Height = 33
      Caption = #35835#21462#21345#25968#25454'[ReadCard]'
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlue
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn3Click
    end
    object BitBtn2: TBitBtn
      Left = 16
      Top = 80
      Width = 305
      Height = 33
      Caption = #21046#23486#23458#21345'[GuestCard]'
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlue
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn2Click
    end
    object BitBtn5: TBitBtn
      Left = 16
      Top = 112
      Width = 305
      Height = 33
      Caption = #27880#38144#21345#29255'[CardErase]'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn5Click
    end
    object BitBtn7: TBitBtn
      Left = 8
      Top = 176
      Width = 321
      Height = 33
      Caption = #35835#21462#21345#29255#31867#22411'[GetCardTypeByCardDataStr]'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn7Click
    end
    object BitBtn8: TBitBtn
      Left = 8
      Top = 208
      Width = 321
      Height = 33
      Caption = #35835#21462#23458#20154#21345#38145#21495'[GetGuestLockNoByCardDataStr]'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn8Click
    end
    object BitBtn9: TBitBtn
      Left = 8
      Top = 240
      Width = 321
      Height = 33
      Caption = #35835#21462#23458#20154#31163#24215#26102#38388'[GetGuestETimeByCardDataStr]'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = BitBtn9Click
    end
    object BitBtn10: TBitBtn
      Left = 16
      Top = 144
      Width = 305
      Height = 33
      Caption = #25346#22833#21345#29255'[LimitCard]'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = BitBtn10Click
    end
  end
  object BitBtn6: TBitBtn
    Left = 528
    Top = 56
    Width = 281
    Height = 33
    Caption = #35835'DLL'#30340#29256#26412#21495'[GetDLLVersion]'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtn6Click
  end
  object edt_CardData: TEdit
    Left = 176
    Top = 448
    Width = 649
    Height = 25
    Color = clScrollBar
    Ctl3D = False
    Font.Charset = GB2312_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 7
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 632
    Width = 848
    Height = 24
    Panels = <
      item
        Alignment = taCenter
        Width = 100
      end
      item
        Width = 50
      end>
  end
  object cmdExit: TBitBtn
    Left = 528
    Top = 88
    Width = 281
    Height = 33
    Caption = #36864#20986
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = cmdExitClick
  end
  object BitBtn11: TBitBtn
    Left = 280
    Top = 416
    Width = 217
    Height = 33
    Caption = #35835#21462#24182#35299#26512#24320#38376#35760#24405
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = BitBtn11Click
  end
  object BitBtn12: TBitBtn
    Left = 40
    Top = 416
    Width = 201
    Height = 33
    Caption = #20851#38381'proUSB'#12304'CloseUSB'#12305
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnClick = BitBtn12Click
  end
end

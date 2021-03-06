object Form1: TForm1
  Left = 236
  Top = 155
  AutoScroll = False
  Caption = 'Delphi Sample'
  ClientHeight = 386
  ClientWidth = 703
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel2: TPanel
    Left = 0
    Top = 89
    Width = 703
    Height = 249
    Align = alClient
    TabOrder = 1
    object Label5: TLabel
      Left = 32
      Top = 21
      Width = 56
      Height = 15
      Caption = 'Room No.'
    end
    object Label6: TLabel
      Left = 255
      Top = 21
      Width = 26
      Height = 15
      Caption = 'Date'
    end
    object Label12: TLabel
      Left = 32
      Top = 118
      Width = 49
      Height = 15
      Caption = 'Card No.'
    end
    object Label13: TLabel
      Left = 32
      Top = 69
      Width = 37
      Height = 15
      Caption = 'Holder'
    end
    object Label14: TLabel
      Left = 255
      Top = 69
      Width = 34
      Height = 15
      Caption = 'ID No.'
    end
    object Label11: TLabel
      Left = 255
      Top = 118
      Width = 35
      Height = 15
      Caption = 'Status'
    end
    object Label2: TLabel
      Left = 32
      Top = 216
      Width = 36
      Height = 15
      Caption = 'Result'
    end
    object Label7: TLabel
      Left = 28
      Top = 162
      Width = 52
      Height = 15
      Caption = 'Breakfast'
    end
    object Label4: TLabel
      Left = 256
      Top = 216
      Width = 39
      Height = 15
      Caption = 'CardID'
    end
    object ED_ROOMNO: TEdit
      Left = 96
      Top = 17
      Width = 112
      Height = 23
      MaxLength = 6
      TabOrder = 0
      Text = '0101'
    end
    object ED_TIME: TEdit
      Left = 312
      Top = 17
      Width = 188
      Height = 23
      MaxLength = 24
      TabOrder = 1
      Text = '200201011200200212311200'
    end
    object ed_cardno: TEdit
      Left = 97
      Top = 114
      Width = 112
      Height = 23
      TabOrder = 2
    end
    object ED_HOLDER: TEdit
      Left = 99
      Top = 65
      Width = 112
      Height = 23
      MaxLength = 20
      TabOrder = 3
      Text = 'Holder'
    end
    object ed_idno: TEdit
      Left = 312
      Top = 65
      Width = 188
      Height = 23
      MaxLength = 20
      TabOrder = 4
      Text = '012456789'
    end
    object CK_OVER: TCheckBox
      Left = 256
      Top = 159
      Width = 122
      Height = 17
      Caption = 'Overwrite'
      TabOrder = 5
    end
    object ed_status: TEdit
      Left = 312
      Top = 114
      Width = 188
      Height = 23
      ReadOnly = True
      TabOrder = 6
    end
    object ED_RESULT: TEdit
      Left = 97
      Top = 212
      Width = 112
      Height = 23
      ReadOnly = True
      TabOrder = 7
    end
    object cb_breakfast: TComboBox
      Left = 97
      Top = 159
      Width = 112
      Height = 23
      Style = csDropDownList
      DropDownCount = 20
      ItemHeight = 15
      ItemIndex = 1
      TabOrder = 8
      Text = '1'
      Items.Strings = (
        'None'
        '1'
        '2'
        '3'
        '4'
        '5')
    end
    object Ed_CardID: TEdit
      Left = 313
      Top = 212
      Width = 112
      Height = 23
      ReadOnly = True
      TabOrder = 9
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 703
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 17
      Width = 17
      Height = 15
      Caption = 'DB'
    end
    object Label3: TLabel
      Left = 260
      Top = 54
      Width = 22
      Height = 15
      Caption = 'Port'
    end
    object Label25: TLabel
      Left = 2
      Top = 54
      Width = 48
      Height = 15
      Caption = 'Software'
    end
    object Label8: TLabel
      Left = 224
      Top = 17
      Width = 67
      Height = 15
      Caption = 'DB Location'
    end
    object cb_port: TComboBox
      Left = 292
      Top = 50
      Width = 65
      Height = 23
      Style = csDropDownList
      DropDownCount = 10
      ItemHeight = 15
      TabOrder = 0
      Items.Strings = (
        'USB'
        'COM1'
        'COM2'
        'COM3'
        'COM4'
        'COM5'
        'COM6'
        'COM7'
        'COM8'
        'COM9')
    end
    object cb_lock: TComboBox
      Left = 57
      Top = 50
      Width = 85
      Height = 23
      Style = csDropDownList
      DropDownCount = 20
      ItemHeight = 15
      TabOrder = 1
      OnChange = cb_lockChange
      Items.Strings = (
        'MHS'
        'THS')
    end
    object ED_Server: TEdit
      Left = 293
      Top = 13
      Width = 268
      Height = 23
      TabOrder = 2
      Text = 'C:\Program Files\HONGLG\MHA V8.0'
    end
    object RadioGroup1: TRadioGroup
      Left = 40
      Top = 3
      Width = 161
      Height = 33
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'ACCESS'
        'MSSQL')
      TabOrder = 3
      OnClick = RadioGroup1Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 338
    Width = 703
    Height = 48
    Align = alBottom
    TabOrder = 2
    object b_newkey: TBitBtn
      Left = 190
      Top = 10
      Width = 68
      Height = 25
      Caption = 'NewKey'
      TabOrder = 0
      OnClick = b_newkeyClick
    end
    object b_dupkey: TBitBtn
      Left = 261
      Top = 10
      Width = 68
      Height = 25
      Caption = 'DupKey'
      TabOrder = 1
      OnClick = b_dupkeyClick
    end
    object b_read: TBitBtn
      Left = 332
      Top = 10
      Width = 86
      Height = 25
      Caption = 'ReadKeyCard'
      TabOrder = 2
      OnClick = b_readClick
    end
    object b_erase: TBitBtn
      Left = 427
      Top = 10
      Width = 86
      Height = 25
      Caption = 'EraseKeyCard'
      TabOrder = 3
      OnClick = b_eraseClick
    end
    object b_checkout: TBitBtn
      Left = 522
      Top = 10
      Width = 68
      Height = 25
      Caption = 'CheckOut'
      TabOrder = 4
      OnClick = b_checkoutClick
    end
    object b_start: TBitBtn
      Left = 9
      Top = 10
      Width = 86
      Height = 25
      Caption = 'StartSession'
      TabOrder = 5
      OnClick = b_startClick
    end
    object b_end: TBitBtn
      Left = 99
      Top = 10
      Width = 86
      Height = 25
      Caption = 'EndSession'
      TabOrder = 6
      OnClick = b_endClick
    end
    object BitBtn1: TBitBtn
      Left = 601
      Top = 10
      Width = 80
      Height = 25
      Caption = 'ReadCardID'
      TabOrder = 7
      OnClick = BitBtn1Click
    end
  end
end

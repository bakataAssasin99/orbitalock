VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "USB��Ӧ���ӿں�����ʾ����"
   ClientHeight    =   8325
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   12180
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8325
   ScaleWidth      =   12180
   StartUpPosition =   1  '����������
   Begin VB.Frame Frame4 
      Caption         =   "��ú���"
      Enabled         =   0   'False
      Height          =   4695
      Left            =   8280
      TabIndex        =   32
      Top             =   1560
      Width           =   3615
      Begin VB.CommandButton Command7 
         Caption         =   "��ȡ�������ʱ��[GetGuestETimeByCardDataStr]"
         Height          =   615
         Left            =   240
         TabIndex        =   40
         Top             =   3960
         Width           =   3135
      End
      Begin VB.CommandButton Command6 
         Caption         =   "��ȡ���˿�����[GetGuestLockNoByCardDataStr]"
         Height          =   615
         Left            =   240
         TabIndex        =   39
         Top             =   3360
         Width           =   3135
      End
      Begin VB.CommandButton Command5 
         Caption         =   "��ȡ��Ƭ����[GetCardTypeByCardDataStr]"
         Height          =   615
         Left            =   240
         TabIndex        =   38
         Top             =   2760
         Width           =   3135
      End
      Begin VB.CommandButton Command4 
         Caption         =   "��ʧ��Ƭ[LimitCard]"
         Height          =   495
         Left            =   480
         TabIndex        =   37
         Top             =   2160
         Width           =   2655
      End
      Begin VB.CommandButton Command2 
         Caption         =   "ע����Ƭ[CardErase]"
         Height          =   495
         Left            =   480
         TabIndex        =   36
         Top             =   1680
         Width           =   2655
      End
      Begin VB.CommandButton cmdbuzzer 
         Caption         =   "����[Buzzer]"
         Height          =   495
         Left            =   480
         TabIndex        =   35
         Top             =   240
         Width           =   2655
      End
      Begin VB.CommandButton cmdwritecard 
         Caption         =   "�Ʊ��Ϳ�[GuestCard]"
         Height          =   495
         Left            =   480
         TabIndex        =   34
         Top             =   1200
         Width           =   2655
      End
      Begin VB.CommandButton cmdreadcard 
         Caption         =   "��ȡ������[ReadCard]"
         Height          =   495
         Left            =   480
         TabIndex        =   33
         Top             =   720
         Width           =   2655
      End
   End
   Begin VB.TextBox txtStrHex 
      BackColor       =   &H8000000B&
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   28
      Text            =   "txtStrHex"
      Top             =   5880
      Width           =   8055
   End
   Begin VB.CommandButton cmdExit 
      Caption         =   "�˳�"
      Height          =   495
      Left            =   8520
      TabIndex        =   25
      Top             =   840
      Width           =   3135
   End
   Begin VB.CommandButton cmdGetDllVer 
      Caption         =   "��DLL�汾��[GetDllVersion]"
      Height          =   495
      Left            =   8520
      TabIndex        =   24
      Top             =   240
      Width           =   3135
   End
   Begin VB.Frame Frame3 
      Caption         =   "ʹ��˵��"
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   1815
      Left            =   120
      TabIndex        =   15
      Top             =   6360
      Width           =   8055
      Begin VB.Label Label12 
         Caption         =   "4,��DLL�汾Ϊ���Զ�̬�⣬���漰�˿ڲ�����"
         ForeColor       =   &H00008000&
         Height          =   255
         Left            =   360
         TabIndex        =   19
         Top             =   1440
         Width           =   6015
      End
      Begin VB.Label Label9 
         Caption         =   "3,���˴��ţ���ʵ�ֺ󿨸���ǰ�����ܵģ�һ��Ĭ��Ϊ0���ɣ�"
         ForeColor       =   &H000000FF&
         Height          =   255
         Left            =   360
         TabIndex        =   18
         Top             =   1080
         Width           =   5535
      End
      Begin VB.Label Label8 
         Caption         =   "2,��˵����ȷ��д��Ӧ��Ϣ���ܷ񷢿��ɹ��Ĺؼ����裻 "
         ForeColor       =   &H00008000&
         Height          =   255
         Left            =   360
         TabIndex        =   17
         Top             =   720
         Width           =   5535
      End
      Begin VB.Label Label7 
         Caption         =   "1,USB�˿ڴ�֮��, ���ܽ��з��������Ȳ���;"
         ForeColor       =   &H000000FF&
         Height          =   255
         Left            =   360
         TabIndex        =   16
         Top             =   360
         Width           =   5895
      End
   End
   Begin VB.CommandButton Command1 
      Caption         =   "��һ��: �򿪶˿�[initializeUSB]"
      Height          =   735
      Left            =   4200
      TabIndex        =   3
      Top             =   480
      Width           =   3735
   End
   Begin VB.OptionButton Option2 
      Caption         =   "proUSB(���弴��,���밲װ��������)"
      Height          =   495
      Left            =   360
      TabIndex        =   2
      Top             =   840
      Value           =   -1  'True
      Width           =   3615
   End
   Begin VB.OptionButton Option1 
      Caption         =   "����������(��Ҫ�Ȱ�װ��������ʹ��)"
      Height          =   495
      Left            =   360
      TabIndex        =   1
      Top             =   360
      Width           =   3615
   End
   Begin VB.Frame Frame1 
      Caption         =   "�˿ڲ���"
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   1335
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   8055
   End
   Begin VB.Frame Frame2 
      Caption         =   "��Ƭ����"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   3855
      Left            =   120
      TabIndex        =   4
      Top             =   1560
      Width           =   8055
      Begin VB.OptionButton Option4 
         Caption         =   "���Կ�����"
         Height          =   255
         Left            =   1200
         TabIndex        =   31
         Top             =   3360
         Value           =   -1  'True
         Width           =   1935
      End
      Begin VB.OptionButton Option3 
         Caption         =   "���ܿ�����"
         Height          =   300
         Left            =   3240
         TabIndex        =   30
         Top             =   3360
         Width           =   1935
      End
      Begin VB.CommandButton cmdreset 
         Caption         =   "�ָ���Ĭ��ֵ"
         Height          =   495
         Left            =   6360
         TabIndex        =   26
         Top             =   3240
         Width           =   1455
      End
      Begin VB.TextBox txtCoID 
         BeginProperty Font 
            Name            =   "����"
            Size            =   10.5
            Charset         =   134
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Left            =   2280
         TabIndex        =   22
         Text            =   "txtCoID"
         Top             =   360
         Width           =   1575
      End
      Begin VB.CommandButton Command3 
         Caption         =   "�����п�Ƭ��ȡ�Ƶ��ʶ"
         Height          =   375
         Left            =   4080
         TabIndex        =   21
         Top             =   360
         Width           =   3735
      End
      Begin VB.TextBox txtDai 
         BeginProperty Font 
            Name            =   "����"
            Size            =   10.5
            Charset         =   134
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Left            =   2280
         TabIndex        =   13
         Text            =   "txtDai"
         Top             =   2880
         Width           =   855
      End
      Begin VB.TextBox txtETime 
         BeginProperty Font 
            Name            =   "����"
            Size            =   10.5
            Charset         =   134
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2280
         TabIndex        =   11
         Text            =   "txtETime"
         Top             =   2280
         Width           =   3375
      End
      Begin VB.TextBox txtLockNo 
         BeginProperty Font 
            Name            =   "����"
            Size            =   10.5
            Charset         =   134
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Left            =   2280
         TabIndex        =   9
         Text            =   "txtLockNo"
         Top             =   1440
         Width           =   1575
      End
      Begin VB.TextBox txtCardNo 
         BeginProperty Font 
            Name            =   "����"
            Size            =   10.5
            Charset         =   134
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Left            =   2280
         TabIndex        =   6
         Text            =   "txtCardNo"
         Top             =   960
         Width           =   1575
      End
      Begin VB.Label Label4 
         Caption         =   "( 01020399��ʾ01��02��03�� )"
         ForeColor       =   &H000000FF&
         Height          =   255
         Left            =   3960
         TabIndex        =   27
         Top             =   1440
         Width           =   3255
      End
      Begin VB.Label Label23 
         Alignment       =   1  'Right Justify
         Caption         =   "�Ƶ��ʶ[coID]��"
         Height          =   255
         Left            =   360
         TabIndex        =   23
         Top             =   360
         Width           =   1695
      End
      Begin VB.Label Label28 
         Caption         =   "������ɣ�����2λ,���2λ,������2λ,�ڶ�������2λ"
         ForeColor       =   &H000000FF&
         Height          =   375
         Left            =   840
         TabIndex        =   20
         Top             =   1800
         Width           =   6495
      End
      Begin VB.Label Label5 
         Caption         =   "��0-255ѭ����"
         ForeColor       =   &H000000FF&
         Height          =   255
         Left            =   3240
         TabIndex        =   14
         Top             =   2880
         Width           =   1575
      End
      Begin VB.Label Label1 
         Alignment       =   1  'Right Justify
         Caption         =   "���˴�[Dai]��"
         Height          =   255
         Left            =   120
         TabIndex        =   12
         Top             =   2880
         Width           =   1935
      End
      Begin VB.Label Label29 
         Alignment       =   1  'Right Justify
         Caption         =   "Ԥ���˷�ʱ��[eTime]��"
         Height          =   255
         Left            =   120
         TabIndex        =   10
         Top             =   2400
         Width           =   1935
      End
      Begin VB.Label Label27 
         Alignment       =   1  'Right Justify
         Caption         =   "����[LockNo]��"
         Height          =   255
         Left            =   240
         TabIndex        =   8
         Top             =   1440
         Width           =   1815
      End
      Begin VB.Label Label2 
         Caption         =   "��0-15,һ����֮����෢16�ſ���"
         ForeColor       =   &H000000FF&
         Height          =   255
         Left            =   3960
         TabIndex        =   7
         Top             =   960
         Width           =   3855
      End
      Begin VB.Label Label22 
         Alignment       =   1  'Right Justify
         Caption         =   "����[CardNo]��"
         Height          =   255
         Left            =   240
         TabIndex        =   5
         Top             =   960
         Width           =   1815
      End
   End
   Begin VB.Label Label3 
      Caption         =   "������[CardHexStr]��"
      Height          =   255
      Left            =   120
      TabIndex        =   29
      Top             =   5520
      Width           =   2055
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'��ȡ������
Private Sub cmdreadcard_Click()
  If rdCard <> True Then Exit Sub            '�ȶ���
  txtStrHex.Text = bufCard
  MsgBox "��ID�ţ�" & Mid(bufCard, 25, 8), 64
End Sub

'�Ʊ��Ϳ�
Private Sub cmdwritecard_Click()
  Dim llock As Byte         '������־
  Dim pdoors As Byte        '�����ű�־
  Dim dlsCoID As Long       '�Ƶ��ʶ
  Dim CardNo As Integer     '����(0-15)
  Dim dai As Integer        '���˴�
  Dim BTime As String       '����ʱ��,Ҳ���ǵ��Ե�ǰʱ��
  Dim ETime As String       'Ԥ���˷�ʱ��
  Dim LockNo As String      '����
  
  If rdCard <> True Then Exit Sub            '�ȶ���
  txtStrHex.Text = bufCard
  
  If Option4.Value = True Then               '������־
    llock = 1
  Else
    llock = 0
  End If
  
  pdoors = 1                                   '�����ű�־
  dlsCoID = CLng(txtCoID.Text)                 '�Ƶ��ʶ
  CardNo = CInt(txtCardNo.Text) Mod 16         '����(0-15)
  dai = CInt(txtDai.Text) Mod 256              '���˴�
  BTime = Format(Now, "YYMMDDHHMM")            '����ʱ��
  ETime = Format(txtETime.Text, "YYMMDDHHMM")  'Ԥ���˷�ʱ��
  LockNo = txtLockNo.Text
  
  st = GuestCard(flagUSB, dlsCoID, CardNo, dai, llock, pdoors, BTime, ETime, LockNo, bufHexStr)
  If flagUSB = 1 Then Buzzer flagUSB, 20     'д��������һ������ΪGuestCard����������������
  txtStrHex.Text = bufHexStr
  If st <> 0 Then
    MsgBox "���÷�������ʧ��, �������Ϊ: " & CStr(st), 16
  Else
    MsgBox "���÷��������ɹ�" & Chr(10) & Chr(10) & "ע��: �������������Ѿ�д������, ����ͣ��һ���Ӻ����ReadCard" & Chr(10) & "���GuestCard��ReadCard��bufHexStr��ͬ��ʾд���ɹ�", 64
  End If

End Sub

'ע����Ƭ
Private Sub Command2_Click()
  Dim dlsCoID As Long       '�Ƶ��ʶ
  
  If rdCard <> True Then Exit Sub            '�ȶ���
  txtStrHex.Text = bufCard
  
  dlsCoID = CLng(txtCoID.Text)               '�Ƶ��ʶ
  st = CardErase(flagUSB, dlsCoID, bufHexStr)
  If flagUSB = 1 Then Buzzer flagUSB, 20   'д��������һ������ΪCardErase����������������
  txtStrHex.Text = bufHexStr
  If st <> 0 Then
    MsgBox "ע��ʧ��, �������Ϊ: " & CStr(st), 16
  Else
    MsgBox "ע���ɹ�", 64
  End If
End Sub

'��Ƭ��ʧ
Private Sub Command4_Click()
  Dim dlsCoID As Long         '�Ƶ��ʶ
  Dim limitNo As String * 4   '��ʧ����
  Dim dai As Integer          '��
    
  If rdCard <> True Then Exit Sub            '�ȶ���
  txtStrHex.Text = bufCard
  
  dlsCoID = CLng(txtCoID.Text)               '�Ƶ��ʶ
  CardNo = CInt(txtCardNo.Text) Mod 16       '����(0-15)
  dai = CInt(txtDai.Text) Mod 256            '���˴�
  BTime = Format(Now, "YYMMDDHHMM")          '����ʱ��
  limitNo = Chr(&H60) & Chr(&H12) & Chr(&HD2) & Chr(&H91)    '��ʧ����: 6012D291
  
  st = LimitCard(flagUSB, dlsCoID, CardNo, dai, BTime, limitNo, bufHexStr)
  If flagUSB = 1 Then Buzzer flagUSB, 20    'д��������һ������ΪLimitCard����������������
  txtStrHex.Text = bufHexStr
  If st <> 0 Then
    MsgBox "��ʧ��Ƭʧ��, �������Ϊ: " & CStr(st), 16
  Else
    MsgBox "���ù�ʧ�������ɹ�" & Chr(10) & "�����ӹ�ʧ����Ϊ: 6012D291", 64
  End If
End Sub

'��ȡ��Ƭ����
Private Sub Command5_Click()
  Dim s As String
  Dim CardType As String * 16

  If rdCard <> True Then Exit Sub            '�ȶ���
  txtStrHex.Text = bufCard
  
  st = GetCardTypeByCardDataStr(bufCard, CardType)
  If st <> 0 Then
    MsgBox "�����ݴ���Ч, �������Ϊ: " & CStr(st), 48
  Else
    s = Left(CardType, 1)
    If s = "0" Then
      MsgBox "��Ȩ��"
    ElseIf s = "1" Then
      MsgBox "��¼��"
    ElseIf s = "2" Then
      MsgBox "�������ÿ�"
    ElseIf s = "3" Then
      MsgBox "ʱ�����ÿ�"
    ElseIf s = "4" Then
      MsgBox "���ƿ�[��ʧ��]"
    ElseIf s = "5" Then
      MsgBox "������ÿ�"
    ElseIf s = "6" Then
      MsgBox "���˿�"
    ElseIf s = "7" Then
      MsgBox "�˷���"
    ElseIf s = "8" Then
      MsgBox "��ؿ�"
    ElseIf s = "9" Then
      MsgBox "δ֪��[�޴�����]"
    ElseIf s = "A" Then
      MsgBox "Ӧ����"
    ElseIf s = "B" Then
      MsgBox "�ܿؿ�"
    ElseIf s = "C" Then
      MsgBox "¥����"
    ElseIf s = "D" Then
      MsgBox "¥�㿨"
    ElseIf s = "E" Then
      MsgBox "δ֪��[�޴�����]"
    ElseIf s = "F" Then
      MsgBox "�հ׿�"
    End If
  End If
End Sub

'��ȡ���˿�����
Private Sub Command6_Click()
  Dim dlsCoID As Long         '�Ƶ��ʶ
  Dim LockNo As String * 16
  
  If rdCard <> True Then Exit Sub            '�ȶ���
  txtStrHex.Text = bufCard
  
  dlsCoID = CLng(txtCoID.Text)               '�Ƶ��ʶ
  st = GetGuestLockNoByCardDataStr(dlsCoID, bufCard, LockNo)
  If st = 0 Then
    MsgBox "����: " & LockNo, 64
  ElseIf st = 1 Then
    MsgBox "�����ݴ���Ч" & Chr(10) & bufCard, 48
  ElseIf st = 2 Then
    MsgBox "�Ǳ��Ƶ꿨" & Chr(10) & bufCard, 48
  ElseIf st = 3 Then
    MsgBox "���ǿ��˿�" & Chr(10) & bufCard, 48
  Else
    MsgBox "δ֪����ֵ: " & CStr(st) & Chr(10) & bufCard, 48
  End If
End Sub

'��ȡ���˿����ʱ��
Private Sub Command7_Click()
  Dim dlsCoID As Long         '�Ƶ��ʶ
  Dim ETime As String * 16
  
  If rdCard <> True Then Exit Sub            '�ȶ���
  txtStrHex.Text = bufCard
  
  dlsCoID = CLng(txtCoID.Text)               '�Ƶ��ʶ
  st = GetGuestETimeByCardDataStr(dlsCoID, bufCard, ETime)
  If st = 0 Then
    MsgBox "���ʱ��: " & ETime, 64
  ElseIf st = 1 Then
    MsgBox "�����ݴ���Ч" & Chr(10) & bufCard, 48
  ElseIf st = 2 Then
    MsgBox "�Ǳ��Ƶ꿨" & Chr(10) & bufCard, 48
  ElseIf st = 3 Then
    MsgBox "���ǿ��˿�" & Chr(10) & bufCard, 48
  Else
    MsgBox "δ֪����ֵ: " & CStr(st) & Chr(10) & bufCard, 48
  End If
End Sub

Private Sub Form_Load()
   flagUSB = 1   'Ĭ��Ϊpro����
   txtCoID = "0"
   Cmdreset_Click
End Sub

Private Sub Option1_Click()
    flagUSB = 0    '����
End Sub

Private Sub Option2_Click()
    flagUSB = 1    'pro����
End Sub
'�رճ���
Private Sub cmdExit_Click()
    End
End Sub

'��ȡDLL�汾��Ϣ
Private Sub cmdGetDllVer_Click()
    Dim s As String * 128
    st = GetDLLVersion(s)
    If st = 0 Then
        MsgBox "DLL�汾��Ϊ��" & s, 64
    Else
        MsgBox "��DLL�汾�Ŵ���, �������Ϊ��" & CStr(st), 48
    End If
End Sub

'USB��ʼ��
Private Sub Command1_Click()
    st = initializeUSB(flagUSB)
    If st <> 0 Then
        MsgBox "��ʼ��USB�˿�ʧ��, �������Ϊ: " & CStr(st), 16
    Else
        MsgBox "��ʼ��USB�˿ڳɹ�", 64
        Frame2.Enabled = True
        Frame4.Enabled = True
    End If
End Sub

'�������ָ���Ĭ��ֵ
Private Sub Cmdreset_Click()
    txtCardNo = "1"
    txtLockNo = "01020399"
    txtETime = Format(Now + 1, "YYYY/MM/DD 14:00")
    txtDai = "0"
    txtStrHex = ""
    Option4.Value = True
End Sub

'������
Private Sub Cmdbuzzer_Click()
    Dim st As Integer
    st = Buzzer(flagUSB, 50)   '����������50x10ms
    If st <> 0 Then
        MsgBox "����ʧ��, �������Ϊ: " & CStr(st), 16
    End If
End Sub

'�����п�Ƭ��ȡ�Ƶ��ʶ
Private Sub Command3_Click()
  Dim i As Long
  Dim s As String
  
  If rdCard <> True Then Exit Sub            '�ȶ���
  txtStrHex.Text = bufCard
  
  If Mid(bufCard, 25, 8) = "FFFFFFFF" Then
    txtCoID.Text = ""
    MsgBox "�˿��ǿհ׿����뻻һ���ܿ��ŵĿ�", 48
    Exit Sub
  End If
  s = Mid(bufCard, 11, 4)
  i = CLng("&H" + s) Mod 16384
  s = Mid(bufCard, 9, 2)
  i = i + (CLng("&H" + s) * 65536)
  txtCoID.Text = CStr(i)
End Sub


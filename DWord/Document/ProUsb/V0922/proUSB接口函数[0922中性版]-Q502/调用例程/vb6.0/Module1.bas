Attribute VB_Name = "Module1"

'��������
'��DLL�汾��
Declare Function GetDLLVersion Lib "proRFL.Dll" (ByVal sDllVer As String) As Integer
'��ʼ��USB�˿�
Declare Function initializeUSB Lib "proRFL.Dll" (ByVal fUSB As Byte) As Integer
'��������һ��
Declare Function Buzzer Lib "proRFL.Dll" (ByVal fUSB As Byte, ByVal t As Integer) As Integer
'����
Declare Function ReadCard Lib "proRFL.Dll" (ByVal fUSB As Byte, ByVal Buffer As String) As Integer
'���˿�
Declare Function GuestCard Lib "proRFL.Dll" (ByVal fUSB As Byte, ByVal dlsCoID As Long, ByVal CardNo As Integer, ByVal dai As Integer, ByVal llock As Integer, ByVal pdoors As Integer, ByVal BTime As String, ByVal ETime As String, ByVal LockNo As String, ByVal CardHexStr As String) As Integer
'ע����Ƭ
Declare Function CardErase Lib "proRFL.Dll" (ByVal fUSB As Byte, ByVal dlsCoID As Long, ByVal CardHexStr As String) As Integer
'��ʧ��Ƭ
Declare Function LimitCard Lib "proRFL.Dll" (ByVal fUSB As Byte, ByVal dlsCoID As Long, ByVal CardNo As Integer, ByVal dai As Integer, ByVal BTime As String, ByVal LCardNo As String, ByVal CardHexStr As String) As Integer
'HEX-ASC
Declare Function hex_a Lib "proRFL.Dll" (ByVal hex As String, ByVal a As String, ByVal length As Integer) As Integer
'ASC-HEX
Declare Function a_hex Lib "proRFL.Dll" (ByVal a As String, ByVal hex As String, ByVal length As Integer) As Integer
'��ȡ��Ƭ����
Declare Function GetCardTypeByCardDataStr Lib "proRFL.Dll" (ByVal CardDataStr As String, ByVal CardType As String) As Integer
'��ȡ���˿�����
Declare Function GetGuestLockNoByCardDataStr Lib "proRFL.Dll" (ByVal dlsCoID As Long, ByVal CardDataStr As String, ByVal LockNo As String) As Integer
'��ȡ�������ʱ��
Declare Function GetGuestETimeByCardDataStr Lib "proRFL.Dll" (ByVal dlsCoID As Long, ByVal CardDataStr As String, ByVal ETime As String) As Integer


'ȫ�ֱ���
Global st As Integer                     '��������״ֵ̬
Global flagUSB As Byte                   '��������־---0��ʾ����,1��ʾpro����
Global bufCard As String * 128           '��Ƭ����
Global bufHexStr As String * 128         'ʮ�������ַ���


'����,�д�����ʾ
'ͬʱ���ص�ǰ����ID(����������,����,����ʱ��)---mid(bufCard,25,8)
Function rdCard() As Boolean
  rdCard = False
  bufCard = ""     '��տ����ݻ���
  st = ReadCard(flagUSB, bufCard)
  If st <> 0 Then
    MsgBox "����ʧ��, �������Ϊ: " & CStr(st), 16
    Exit Function
  End If
  If Left(bufCard, 6) <> "551501" Then
    MsgBox "�������ĸ�Ӧ���޿�" & Chr(10) & bufCard, 48
    Exit Function
  End If
  rdCard = True
End Function

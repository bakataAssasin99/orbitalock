unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls,StrUtils, Buttons, ExtCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Button1: TButton;
    GroupBox2: TGroupBox;
    Label13: TLabel;
    Label16: TLabel;
    edt_LockNo: TEdit;
    edt_Dai: TEdit;
    Label5: TLabel;
    Label9: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label20: TLabel;
    Label10: TLabel;
    edt_coID: TEdit;
    Button3: TButton;
    Label8: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    BitBtn4: TBitBtn;
    GroupBox4: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    edt_CardData: TEdit;
    Label17: TLabel;
    Label1: TLabel;
    StatusBar1: TStatusBar;
    Label11: TLabel;
    edt_CardNo: TEdit;
    Label12: TLabel;
    cmdExit: TBitBtn;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    procedure cmdExitClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
  private
    { Private declarations }
    function rdCard: Boolean;
  public
    { Public declarations }
  end;

var
  Form1:        TForm1;
  flagUSB:      Integer;    //??????????,0--????USB??????,1--proUSB
  st:           Integer;
  bufCard:      Array[0..128] of char;

implementation

  //??DLL??????
  function GetDLLVersion(sDllVer:PChar):Integer; stdcall;
    external 'proRFL.DLL';
  //????USB
  function initializeUSB(fUSB: Byte): Integer; stdcall;
    external 'proRFL.DLL';
  //????proUSB
  procedure CloseUSB(fUSB: Byte); stdcall;
    external 'proRFL.DLL';
  //??????
  function Buzzer(fUSB:Byte;t: Integer):Integer; stdcall;
    external 'proRFL.DLL';
  //????????
  function ReadCard(fUSB:Byte;Buffer:PChar):Integer; stdcall;
    external 'proRFL.DLL';
  //????57????????ID??
  function ReadCardID_T5557(fUSB:Byte;Buffer:PChar):Integer; stdcall;
    external 'proRFL.DLL';
  //??????
  //int __stdcall GuestCard(uchar fUSB,int dlsCoID,uchar CardNo,uchar dai,uchar LLock,uchar pdoors,uchar BDate[10],uchar EDate[10],uchar RoomNo[8],uchar *cardHexStr)
  function GuestCard(fUSB:Byte;dlsCoID:Integer;CardNo,dai,llock,pdoors:Byte;BDate,EDate,RoomNo:Pchar;CardHexStr:PChar):Integer; stdcall;
    external 'proRFL.DLL';
  //??????
  //int __stdcall LimitCard(uchar d12,int dlsCoID,uchar CardNo,uchar dai,uchar BDate[10],uchar LCardNo[4],uchar *cardHexStr)
  function LimitCard(fUSB:Byte;dlsCoID:Integer;CardNo,dai:Byte;BDate,LCardNo:Pchar;CardHexStr:PChar):Integer; stdcall;
    external 'proRFL.DLL';
  //????????
  //int __stdcall CardErase(uchar fUSB,int dlsCoID,unsigned char *cardHexStr)
  function CardErase(fUSB:Byte;dlsCoID:Integer;cardHexStr:PChar):Integer; stdcall;
    external 'proRFL.DLL';
  //HEX-ASC
  //__int16 __stdcall hex_a(unsigned char *hex,unsigned char *a,__int16 len)
  function hex_a(hex,asc:PChar;hLen:Integer):Integer; stdcall;
    external 'proRFL.DLL';
  //ASC-HEX
  //__int16 __stdcall a_hex(unsigned char *a,unsigned char *hex,__int16 len)
  function a_hex(asc,hex:PChar;aLen:Integer):Integer; stdcall;
    external 'proRFL.DLL';

  //????????????
  //int __stdcall GetCardTypeByCardDataStr(unsigned char *CardDataStr,unsigned char *CardType)
  function GetCardTypeByCardDataStr(cardHexStr,CardType:PChar):Integer; stdcall;
    external 'proRFL.DLL';

  //??????????????
  //int __stdcall GetGuestLockNoByCardDataStr(int dlsCoID,unsigned char *CardDataStr,unsigned char *LockNo)
  function GetGuestLockNoByCardDataStr(dlsCoID: Integer;cardHexStr,LockNo:PChar):Integer; stdcall;
    external 'proRFL.DLL';

  //????????????????
  //int __stdcall GetGuestETimeByCardDataStr(int dlsCoID,unsigned char *CardDataStr,unsigned char *eTime)
  function GetGuestETimeByCardDataStr(dlsCoID: Integer;cardHexStr,eTime:PChar):Integer; stdcall;
    external 'proRFL.DLL';

  //????????????
  //int __stdcall ReadRecord(uchar d12,unsigned char *buffData)
  function ReadRecord(fUSB:Byte;bufData:PChar):Integer; stdcall;
    external 'proRFL.DLL';

  //??????????????????????????
  //int __stdcall GetOpenRecordByDataStr(unsigned char *DataStr,unsigned char *sOpen)
  function GetOpenRecordByDataStr(DataStr,sOpen:PChar):Integer; stdcall;
    external 'proRFL.DLL';

{$R *.dfm}

//????,??????????
//????????????????ID??????????????????????????--copy(bufCard,25,8)
function TForm1.rdCard: Boolean;
var
  st:  Integer;
Label
  Exit_rdCard;
begin
  Result:=False;
  Screen.Cursor:=crHourGlass;
  st:=ReadCard(flagUSB,bufCard);
  if st<>0 then begin
    Application.MessageBox(PCHAR('????????'+#10+IntToStr(st)),'????',MB_OK+MB_ICONERROR);
    goto Exit_rdCard;
  end;
  if copy(bufCard,5,2)<>'01' then begin       //????????551501
    Application.MessageBox(PCHAR('??????????????????'+#10+bufCard),'????',MB_OK+MB_ICONWARNING);
    goto Exit_rdCard;
  end;
  Result:=True;
Exit_rdCard:
  Screen.Cursor:=crDefault;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  flagUSB:=1;   //????proUSB
  DateTimePicker1.DateTime:=Now+1;
end;

procedure TForm1.cmdExitClick(Sender: TObject);
begin
  Close;
end;

//????????????
procedure TForm1.BitBtn4Click(Sender: TObject);
begin
  edt_CardNo.Text:='0';
  edt_LockNo.Text:='01020399';
  edt_Dai.Text:='0';
end;

//??DLL??????
procedure TForm1.BitBtn6Click(Sender: TObject);
var
  st:     Integer;
  sa1:    Array[0..128] of char;
begin
  st:=GetDLLVersion(sa1);
  StatusBar1.Panels[0].Text:=IntToStr(st);
  StatusBar1.Panels[1].Text:=sa1;
  if st=0 then
    Application.MessageBox(Pchar('DLL????????'+StrPas(sa1)),'????',MB_OK+MB_ICONINFORMATION);
end;

procedure TForm1.RadioButton3Click(Sender: TObject);
begin
  flagUSB:=0;   //????USB
end;

procedure TForm1.RadioButton4Click(Sender: TObject);
begin
  flagUSB:=1;   //proUSB
end;

//????USB
procedure TForm1.Button1Click(Sender: TObject);
var
  st:   Integer;
begin
  st:=initializeUSB(flagUSB);       //0????????USB, 1????proUSB
  if st<>0 then
    Application.MessageBox(Pchar('????USB????'+#10+IntToStr(st)),'????',MB_OK+MB_ICONWARNING)
  else begin
    Application.MessageBox('????USB????','????',MB_OK+MB_ICONINFORMATION);
    Button3.Enabled:=True;
    GroupBox4.Enabled:=True;
  end;
end;

//??????
procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  Buzzer(flagUSB,50);   //??????????50x10????
end;

//????????
procedure TForm1.BitBtn5Click(Sender: TObject);
var
  st:     Integer;
  sa1:    Array[0..128] of char;
begin
  if not rdCard then Exit;   //??????
  st:=CardErase(flagUSB,StrToIntDef(edt_coID.Text,0),sa1);
  if flagUSB=1 then Buzzer(flagUSB,20);      //????????????????????CardErase??????????????????
  edt_CardData.Text:=StrPas(sa1);
  if st<>0 then
    Application.MessageBox(Pchar('????????'+#10+IntToStr(st)),'????',MB_OK+MB_ICONWARNING)
  else begin
    Application.MessageBox('????????','????',MB_OK+MB_ICONINFORMATION);
  end;
end;

//????????
procedure TForm1.BitBtn10Click(Sender: TObject);
var
  st:       Integer;
  limitNo:  Array[0..3] of char;
  sa1:      Array[0..128] of char;
begin
  if not rdCard then Exit;   //??????
  //????????: 6012D291
  limitNo[0]:=chr($60);
  limitNo[1]:=chr($12);
  limitNo[2]:=chr($d2);
  limitNo[3]:=chr($91);
  st:=LimitCard(flagUSB,
                StrToIntDef(edt_coID.Text,0),    //dlsCoID
                StrToIntDef(edt_CardNo.Text,0),  //CardNo
                StrToIntDef(edt_Dai.Text,0),     //dai
                PCHAR(FormatDateTime('YYMMDDHHMM',Now)),
                limitNo,
                sa1);
  if flagUSB=1 then Buzzer(flagUSB,20);      //????????????????????LimitCard??????????????????
  edt_CardData.Text:=StrPas(sa1);
  if st<>0 then
    Application.MessageBox(Pchar('??????????????????'+#10+IntToStr(st)),'????',MB_OK+MB_ICONWARNING)
  else begin
    Application.MessageBox(Pchar('??????????????????'+#10+'????????????????: 6012D291'),'????',MB_OK+MB_ICONINFORMATION);
  end;

end;

procedure TForm1.BitBtn2Click(Sender: TObject);
var
  st:            Integer;
  llock,pdoors:  Byte;
  sa1:           Array[0..128] of char;
begin
  if not rdCard then Exit;   //??????
  //????????
  llock:=0;
  if RadioButton1.Checked then llock:=1;
  //??????????
  pdoors:=1;
  //????????
  DateTimePicker1.Time:=DateTimePicker2.Time;
  st:=GuestCard(flagUSB,
                StrToIntDef(edt_coID.Text,0),    //dlsCoID
                StrToIntDef(edt_CardNo.Text,0),  //CardNo
                StrToIntDef(edt_Dai.Text,0),     //dai
                llock,pdoors,
                PCHAR(FormatDateTime('YYMMDDHHMM',Now)),   //????????
                PCHAR(FormatDateTime('YYMMDDHHMM',DateTimePicker1.DateTime)),  //????????
                PCHAR(edt_LockNo.Text),      //????
                sa1);                        //??????
  if flagUSB=1 then Buzzer(flagUSB,20);      //????????????????????GuestCard??????????????????
  edt_CardData.Text:=StrPas(sa1);
  if st<>0 then
    Application.MessageBox(Pchar('????????????????'+#10+IntToStr(st)),'????',MB_OK+MB_ICONWARNING)
  else begin
    Application.MessageBox('????????????????','????',MB_OK+MB_ICONINFORMATION);
  end;

end;

//??????????????????????
procedure TForm1.Button3Click(Sender: TObject);
var
  i:   Integer;
  s:   String;
begin
  if not rdCard then Exit;   //??????
  if copy(bufCard,25,8)='FFFFFFFF' then begin
    edt_coID.Text:='';
    Application.MessageBox('????????????????????????????????','????',MB_OK+MB_ICONWARNING);
    Exit;
  end;
  s:=copy(bufCard,11,4);
  i:=StrToInt('$'+s) mod 16384;
  s:=copy(bufCard,9,2);
  i:=i+(StrToInt('$'+s) * 65536);
  edt_coID.Text:=IntToStr(i);
end;

//????
procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  if not rdCard then Exit;   //??????
  edt_CardData.Text:=StrPas(bufCard);
  Application.MessageBox(Pchar(('????????????'+copy(bufCard,25,8)+char(13)+'????????ID????'+copy(bufCard,57,8))),'????',MB_OK+MB_ICONINFORMATION);
end;

procedure TForm1.BitBtn7Click(Sender: TObject);
var
  CardType:      Array[0..16] of char;
begin
  if not rdCard then Exit;   //??????
  edt_CardData.Text:=StrPas(bufCard);
  st:=GetCardTypeByCardDataStr(bufCard,CardType);
  if st<>0 then
    Application.MessageBox(Pchar(('??????????????'+IntToStr(st))),'????',MB_OK+MB_ICONWARNING)
  else
    if CardType[0]='0' then
      Application.MessageBox('??????','????',MB_OK+MB_ICONINFORMATION)
    else if CardType[0]='1' then
      Application.MessageBox('??????','????',MB_OK+MB_ICONINFORMATION)
    else if CardType[0]='2' then
      Application.MessageBox('??????????','????',MB_OK+MB_ICONINFORMATION)
    else if CardType[0]='3' then
      Application.MessageBox('??????????','????',MB_OK+MB_ICONINFORMATION)
    else if CardType[0]='4' then
      Application.MessageBox('??????[??????]','????',MB_OK+MB_ICONINFORMATION)
    else if CardType[0]='5' then
      Application.MessageBox('??????????','????',MB_OK+MB_ICONINFORMATION)
    else if CardType[0]='6' then
      Application.MessageBox('??????','????',MB_OK+MB_ICONINFORMATION)
    else if CardType[0]='7' then
      Application.MessageBox('??????','????',MB_OK+MB_ICONINFORMATION)
    else if CardType[0]='8' then
      Application.MessageBox('??????','????',MB_OK+MB_ICONINFORMATION)
    else if CardType[0]='9' then
      Application.MessageBox('??????[????????]','????',MB_OK+MB_ICONINFORMATION)
    else if CardType[0]='A' then
      Application.MessageBox('??????','????',MB_OK+MB_ICONINFORMATION)
    else if CardType[0]='B' then
      Application.MessageBox('??????','????',MB_OK+MB_ICONINFORMATION)
    else if CardType[0]='C' then
      Application.MessageBox('??????','????',MB_OK+MB_ICONINFORMATION)
    else if CardType[0]='D' then
      Application.MessageBox('??????','????',MB_OK+MB_ICONINFORMATION)
    else if CardType[0]='E' then
      Application.MessageBox('??????[????????]','????',MB_OK+MB_ICONINFORMATION)
    else if CardType[0]='F' then
      Application.MessageBox('??????','????',MB_OK+MB_ICONINFORMATION);
end;

procedure TForm1.BitBtn8Click(Sender: TObject);
var
  LockNo:      Array[0..16] of char;
begin
  if not rdCard then Exit;   //??????
  edt_CardData.Text:=StrPas(bufCard);
  st:=GetGuestLockNoByCardDataStr(StrToIntDef(edt_coID.Text,0),bufCard,LockNo);
  if st=0 then
    Application.MessageBox(PChar('????:'+#10+LockNo),'????',MB_OK+MB_ICONINFORMATION)
  else if st=1 then
    Application.MessageBox(PChar('????????????'+#10+bufCard),'????',MB_OK+MB_ICONWARNING)
  else if st=2 then
    Application.MessageBox(Pchar('??????????'+#10+bufCard),'????',MB_OK+MB_ICONWARNING)
  else if st=3 then
    Application.MessageBox(Pchar('??????????'+#10+bufCard),'????',MB_OK+MB_ICONWARNING)
  else
    Application.MessageBox(Pchar('??????????'+#10+IntToStr(st)+#10+bufCard),'????',MB_OK+MB_ICONWARNING);
end;

procedure TForm1.BitBtn9Click(Sender: TObject);
var
  ETime:      Array[0..16] of char;
begin
  if not rdCard then Exit;   //??????
  edt_CardData.Text:=StrPas(bufCard);
  st:=GetGuestETimeByCardDataStr(StrToIntDef(edt_coID.Text,0),bufCard,ETime);
  if st=0 then
    Application.MessageBox(PChar('????????:'+#10+ETime),'????',MB_OK+MB_ICONINFORMATION)
  else if st=1 then
    Application.MessageBox(PChar('????????????'+#10+bufCard),'????',MB_OK+MB_ICONWARNING)
  else if st=2 then
    Application.MessageBox(Pchar('??????????'+#10+bufCard),'????',MB_OK+MB_ICONWARNING)
  else if st=3 then
    Application.MessageBox(Pchar('??????????'+#10+bufCard),'????',MB_OK+MB_ICONWARNING)
  else
    Application.MessageBox(Pchar('??????????'+#10+IntToStr(st)+#10+bufCard),'????',MB_OK+MB_ICONWARNING);
end;

//??????????????????
procedure TForm1.BitBtn11Click(Sender: TObject);
var
  fiq:         Boolean;
  s,s1:        String;
  i,j,k:       Integer;
  sOpen:       Array[0..16] of char;
  bufRec:      Array[0..20000] of char;
begin
  Screen.Cursor:=crHourGlass;
  st:=ReadRecord(flagUSB,bufRec);
  Screen.Cursor:=crDefault;
  if st<>0 then begin
    if Application.MessageBox(PCHAR('????????????????????????????'+#10+IntToStr(st)), '????????',
           MB_OKCANCEL+MB_ICONQUESTION+MB_DEFBUTTON2) = mrCancel then Exit;
  end;

  //????????74??????????8??????????????????????6????552101??????4??????????????
  //k:=(length(StrPas(bufRec)) div 74);   //????????
  //k:=k*4;                               //????4??????
  //for i:=0 to k-1 do begin
  for i:=0 to 223 do begin      //??????224??????
    j:=(i mod 4);
    if j=0 then begin
      s1:=copy(bufRec,(i div 4)*74+74*8+1,74);
    end;
    if st<>0 then
      s:='6B15458D15EA3941'    //????????2010/05/29 08:57:02
    else
      s:=copy(s1,7+(i mod 4)*16,16);
    fiq:=InputQuery('????????????',PCHAR('????????????????16????????'+#10+'?????? '+IntToStr(j)+' ??????'+#10),s);
    if not fiq then Exit;
    if GetOpenRecordByDataStr(PChar(s),sOpen)<>0 then
      Application.MessageBox('????????','????',MB_OK+MB_ICONWARNING)
    else begin
      s:='????????????';
      s:=s+#10+'????????'+sOpen[0];
      s:=s+#10+'??????20';
      s:=s+sOpen[1]+sOpen[2]+'/'+sOpen[3]+sOpen[4]+'/'+sOpen[5]+sOpen[6];
      s:=s+' '+sOpen[7]+sOpen[8]+':'+sOpen[9]+sOpen[10]+':'+sOpen[11]+sOpen[12];
      Application.MessageBox(PChar('??????????????????'+sOpen+#10+s),'????',MB_OK+MB_ICONINFORMATION);
    end;
    if Application.MessageBox(PCHAR('????????????????????????'), '????????',
           MB_OKCANCEL+MB_ICONQUESTION+MB_DEFBUTTON2) = mrCancel then Exit;
  end;
end;

//????proUSB
procedure TForm1.BitBtn12Click(Sender: TObject);
begin
  CloseUSB(flagUSB);
  Application.MessageBox(PChar('USB????????????????????USB????'+#10+'????????????USB??????????USB'),'????',MB_OK+MB_ICONINFORMATION);
end;


end.

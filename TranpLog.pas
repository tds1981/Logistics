unit TranpLog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Unit4, Unit2, Unit1, math, StdCtrls,  ComObj;

type
  TTranpLog = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Frame41: TFrame4;
    OpenDialog1: TOpenDialog;
    Frame21: TFrame2;
    SaveDialog1: TSaveDialog;
    N4: TMenuItem;
    procedure N3Click(Sender: TObject);
    Procedure BufNew(In_Out: boolean);
    procedure N2Click(Sender: TObject);
    procedure Frame21BitBtn1Click(Sender: TObject);
    procedure Frame21BitBtn2Click(Sender: TObject);
    procedure Frame21BitBtn3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure Frame21VEGChange(Sender: TObject);
    procedure Frame21OEGChange(Sender: TObject);
    procedure Frame21MEGChange(Sender: TObject);
    procedure Frame21GAMChange(Sender: TObject);
    procedure Frame21DOGChange(Sender: TObject);
    procedure Frame21PAMChange(Sender: TObject);
    procedure Frame21PEGChange(Sender: TObject);
    procedure Frame21VAMChange(Sender: TObject);
    procedure Frame21VEG1Change(Sender: TObject);
    procedure Frame21DateTimePicker1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  SaveType = record
     NameZD: string [50];
     Comment: string [255];
     VEG, OEG, GAM, DOG, SSD, SRG, IVZ, PZA, PVA, PAM, VAM, RPV, RAP, RAV: real;
     VOP, VOV, PPE, VPE, POE, VOE: real;
     KEG, MEG, TSP, TSV: integer;
     KAMmax, KAMmin: INTEGER;
     DNZ: TDateTime;
     DZR: real;
     PEG, VEG1: real;
  end;

  VariantTabel = record
    KAM: integer;
    KAM1: array of integer;
    Tpo: array of real;  //подготовительные операции при каждой ездки
    SumTpo:real; // суммарное время подготовительных операций
    E_: integer;
    Krit1: integer;
    Krit2: real;
    Krit3: real;
    SumTime: real;
  end;

var
  MainForm: TTranpLog;
  Buf: SaveType; //Запись с исходными данными
  KAMm: integer; // расчётное количество грузокомплектов
  GenVar: array of VariantTabel;
  NewVar: array of integer;  //массив для хранения индексов изменённой таблицы вариантов
  Optimum1, Optimum2, Optimum3: integer;

implementation

{$R *.dfm}
Procedure TTranpLog.BufNew(In_Out: boolean);    //обновление   Записи с исходными данными
Begin
if  In_Out then
with Frame21  do
    begin
      NameZD.Text:=Buf.NameZD;        Comment.Text:=Buf.Comment;
      VEG.Text:=FloatToStr(Buf.VEG);  OEG.Text:=FloatToStr(Buf.OEG);  GAM.Text:=FloatToStr(Buf.GAM);
      DOG.Text:=FloatToStr(Buf.DOG);  SSD.Text:=FloatToStr(Buf.SSD);  SRG.Text:=FloatToStr(Buf.SRG);
      IVZ.Text:=FloatToStr(Buf.IVZ);  PZA.Text:=FloatToStr(Buf.PZA);  PVA.Text:=FloatToStr(Buf.PVA);
      PAM.Text:=FloatToStr(Buf.PAM);  VAM.Text:=FloatToStr(Buf.VAM);  RPV.Text:=FloatToStr(Buf.RPV);
      RAP.Text:=FloatToStr(Buf.RAP);  RAV.Text:=FloatToStr(Buf.RAV);  VOP.Text:=FloatToStr(Buf.VOP);
      VOV.Text:=FloatToStr(Buf.VOV);  PPE.Text:=FloatToStr(Buf.PPE);  VPE.Text:=FloatToStr(Buf.VPE);
      POE.Text:=FloatToStr(Buf.POE);  VOE.Text:=FloatToStr(Buf.VOE);

      DNZ.DateTime:=Buf.DNZ;   DateTimePicker1.Time:= DNZ.Time;

      KEG.Text:=IntToStr(Buf.KEG);    MEG.Text:=IntTostr(Buf.MEG);    TSP.Text:=IntToStr(Buf.TSP);
      TSV.Text:=IntToStr(Buf.TSV);    KAMmax.Text:=IntTostr(Buf.KAMmax);    KAMmin.Text:=IntToStr(Buf.KAMmin);
      DZR.Text:=FloatToStr(Buf.DZR);
      PEG.Text:=FloatToStr(Buf.PEG);    VEG1.Text:=FloatToStr(Buf.VEG1);
    end
else
with Frame21  do
    begin
     Buf.NameZD:=NameZD.Text;        Buf.Comment:=Comment.Text;
      Buf.VEG:=StrToFloat(VEG.Text);  Buf.OEG:=StrToFloat(OEG.Text);  Buf.GAM:=StrToFloat(GAM.Text);
      Buf.DOG:=StrToFloat(DOG.Text);  Buf.SSD:=StrToFloat(SSD.Text);  Buf.SRG:=StrToFloat(SRG.Text);
      Buf.IVZ:=StrToFloat(IVZ.Text);  Buf.PZA:=StrToFloat(PZA.Text);  Buf.PVA:=StrToFloat(PVA.Text);
      Buf.PAM:=StrToFloat(PAM.Text);  Buf.VAM:=StrToFloat(VAM.Text);  Buf.RPV:=StrToFloat(RPV.Text);
      Buf.RAP:=StrToFloat(RAP.Text);  Buf.RAV:=StrToFloat(RAV.Text);  Buf.VOP:=StrToFloat(VOP.Text);
      Buf.VOV:=StrToFloat(VOV.Text);  Buf.PPE:=StrToFloat(PPE.Text);  Buf.VPE:=StrToFloat(VPE.Text);
      Buf.POE:=StrToFloat(POE.Text);  Buf.VOE:=StrToFloat(VOE.Text);

      Buf.DNZ:=DNZ.DateTime;

      Buf.KEG:=StrToInt(KEG.Text);    Buf.MEG:=StrToInt(MEG.Text);    Buf.TSP:=StrToInt(TSP.Text);
      Buf.TSV:=StrToInt(TSV.Text);    Buf.KAMmax:=StrToInt(KAMmax.Text);  Buf.KAMmin:=StrToInt(KAMmin.Text);
      Buf.DZR:=StrToFloat(DZR.Text);
      Buf.PEG:=StrToFloat(PEG.Text);  Buf.VEG1:=StrToFloat(VEG1.Text);
    end;
End;

procedure TTranpLog.N3Click(Sender: TObject);
var F: file of SaveType;
    RezWr: integer;
Begin
OpenDialog1.InitialDir:='.\Исходные данные' ;
IF OpenDialog1.Execute  THEN
  begin
    AssignFile(F,OpenDialog1.FileName);
    Reset(F);
    BlockRead(F, Buf, 1, RezWr);
    CloseFile(F);
  end;
  
    BufNew(True);     // моя процедура

    Frame41.Enabled:=False;
    Frame41.Hide;
  //  Frame31.Enabled:=False;
  //  Frame31.Hide;
 //  Frame51.Enabled:=False;
 //   Frame51.Hide;

    Frame21.Enabled:=True;
    Frame21.Show;

    Frame21PAMChange(Self);
    Frame21VAMChange(self);
End;

procedure TTranpLog.N2Click(Sender: TObject);
begin
    Frame41.Enabled:=False;
    Frame41.Hide;

    BufNew(true);
    Frame21.Enabled:=True;
    Frame21.Show;
end;

procedure TTranpLog.Frame21BitBtn1Click(Sender: TObject);
type TShowDll2 = PROCEDURE(Handle: THandle; Buf1: SaveType);
var hLib: THandle;
    ShowDll2: TShowDll2;
Begin
    BufNew(false);
    hLib:=LoadLibrary('dll2.dll');
    if hLib<32 then begin ShowMessage('отсутствует библиотека Dll2.dll');Exit; end;
    ShowDll2:=TShowDll2(GetProcAddress(hLib,'SHOWDLL2'));

    ShowDll2(Application.Handle, Buf);
    FreeLibrary(hLib);
    MainForm.WindowState:=wsNormal;
end;

procedure TTranpLog.Frame21BitBtn2Click(Sender: TObject);
var F: file of SaveType;
   // Buf: SaveType;
    RezWr: integer;
Begin
with  Frame21 do
begin
      Buf.NameZD:=NameZD.Text;        Buf.Comment:=Comment.Text;
      Buf.VEG:=StrToFloat(VEG.Text);  Buf.OEG:=StrToFloat(OEG.Text);  Buf.GAM:=StrToFloat(GAM.Text);
      Buf.DOG:=StrToFloat(DOG.Text);  Buf.SSD:=StrToFloat(SSD.Text);  Buf.SRG:=StrToFloat(SRG.Text);
      Buf.IVZ:=StrToFloat(IVZ.Text);  Buf.PZA:=StrToFloat(PZA.Text);  Buf.PVA:=StrToFloat(PVA.Text);
      Buf.PAM:=StrToFloat(PAM.Text);  Buf.VAM:=StrToFloat(VAM.Text);  Buf.RPV:=StrToFloat(RPV.Text);
      Buf.RAP:=StrToFloat(RAP.Text);  Buf.RAV:=StrToFloat(RAV.Text);  Buf.VOP:=StrToFloat(VOP.Text);
      Buf.VOV:=StrToFloat(VOV.Text);  Buf.PPE:=StrToFloat(PPE.Text);  Buf.VPE:=StrToFloat(VPE.Text);
      Buf.POE:=StrToFloat(POE.Text);  Buf.VOE:=StrToFloat(VOE.Text);

      Buf.DNZ:=DNZ.DateTime;

      Buf.KEG:=StrToInt(KEG.Text);    Buf.MEG:=StrToInt(MEG.Text);    Buf.TSP:=StrToInt(TSP.Text);
      Buf.TSV:=StrToInt(TSV.Text);    Buf.KAMmax:=StrToInt(KAMmax.Text);  Buf.KAMmin:=StrToInt(KAMmin.Text);
      Buf.DZR:=StrToFloat(DZR.Text);
      Buf.PEG:=StrToFloat(PEG.Text);  Buf.VEG1:=StrToFloat(VEG1.Text);

if NameZD.Text<>'' then SaveDialog1.FileName:=ExtractFilePath(Application.ExeName)+NameZD.Text    {ExtractFilePath(Application.ExeName)+}
                   else SaveDialog1.FileName:= 'Исходные данные\Вариант без названия';
if SaveDialog1.Execute then
  begin
    AssignFile(F,SaveDialog1.FileName+'.lg');
    Rewrite(F);
    BlockWrite(F, Buf, 1, RezWr);
    CloseFile(F);
  end;
end;
End;

procedure TTranpLog.Frame21BitBtn3Click(Sender: TObject);
type TShowDll3 = PROCEDURE(Handle: THandle; Buf1: SaveType);
var hLib: THandle;
    ShowDll3: TShowDll3;
Begin
    BufNew(false); 
    hLib:=LoadLibrary('dll3.dll');
    if hLib<32 then begin ShowMessage('отсутствует библиотека dll3.dll');Exit; end;
    ShowDll3:=TShowDll3(GetProcAddress(hLib,'SHOWDLL3'));

    ShowDll3(Application.Handle, Buf);
    FreeLibrary(hLib);
   // fORM1.WindowState:=wsMaximized;
end;

procedure TTranpLog.N4Click(Sender: TObject);
var F1: TForm1;
begin
 F1:=TForm1.Create(self);
 F1.ShowModal;
 F1.Free;

end;

Procedure ProverkaInput;
var g,v,m: real;
    Mer:integer;
Begin
with MainForm.Frame21  do
  If (VEG.Text<>'')and(OEG.Text<>'')and(MEG.Text<>'')and(GAM.Text<>'')and(DOG.Text<>'')
  Then
      if (StrToFloat(VEG.Text)<>0)and(StrToFloat(OEG.Text)<>0)and(StrToFloat(MEG.Text)<>0)and(StrToFloat(GAM.Text)<>0)and(StrToFloat(DOG.Text)<>0)
       then
       begin
        PAM.Enabled:=true;
        PEG.Enabled:=true;
        VAM.Enabled:=true;
        VEG1.Enabled:=true;
        Label18.Enabled:=true;
        Label28.Enabled:=true;
        Label29.Enabled:=true;
        Label16.Enabled:=true;

          g:=StrToFloat(Gam.Text)/StrToFloat(Veg.Text);
          v:=StrToFloat(Dog.Text)/StrToFloat(Oeg.Text);
          m:=StrToFloat(Meg.Text);
          Mer:=Floor(min(g,min(v,m)));
          Label34.Caption:='Число единиц груза в одной АМ:    '+FloatToStr(Mer);
       end;
End;

procedure TTranpLog.Frame21VEGChange(Sender: TObject);
begin
ProverkaInput;
end;

procedure TTranpLog.Frame21OEGChange(Sender: TObject);
begin
ProverkaInput;
end;

procedure TTranpLog.Frame21MEGChange(Sender: TObject);
begin
ProverkaInput;
end;

procedure TTranpLog.Frame21GAMChange(Sender: TObject);
begin
ProverkaInput;
end;

procedure TTranpLog.Frame21DOGChange(Sender: TObject);
begin
ProverkaInput;
end;

procedure TTranpLog.Frame21PAMChange(Sender: TObject);
var g,v,m: real;
    Mer:integer;
begin
with MainForm.Frame21  do
   If (VEG.Text<>'')and(OEG.Text<>'')and(MEG.Text<>'')and(GAM.Text<>'')and(DOG.Text<>'')and(Pam.Text<>'')
  Then
      if (StrToFloat(VEG.Text)<>0)and(StrToFloat(OEG.Text)<>0)and(StrToFloat(MEG.Text)<>0)and(StrToFloat(GAM.Text)<>0)and(StrToFloat(DOG.Text)<>0)and(StrToFloat(Pam.Text)<>0)
       then
       begin
          g:=StrToFloat(Gam.Text)/StrToFloat(Veg.Text);
          v:=StrToFloat(Dog.Text)/StrToFloat(Oeg.Text);
          m:=StrToFloat(Meg.Text);
          Mer:=Floor(min(g,min(v,m)));
          PEG.Text:=FloatToStr(strToFloat(Pam.Text) / Mer);
          Label28.font.Color:=clMaroon;
          PEG.font.Color:=clMaroon;
          Pam.Font.Color:=clBlack;
          Label18.Font.Color:=clBlack;
       end;
end;

procedure TTranpLog.Frame21PEGChange(Sender: TObject);
var g,v,m: real;
    Mer:integer;
begin
with MainForm.Frame21  do
   If (VEG.Text<>'')and(OEG.Text<>'')and(MEG.Text<>'')and(GAM.Text<>'')and(DOG.Text<>'')and(PEG.Text<>'')
  Then
      if (StrToFloat(VEG.Text)<>0)and(StrToFloat(OEG.Text)<>0)and(StrToFloat(MEG.Text)<>0)and(StrToFloat(GAM.Text)<>0)and(StrToFloat(DOG.Text)<>0)and(StrToFloat(PEG.Text)<>0)
       then
       begin
          g:=StrToFloat(Gam.Text)/StrToFloat(Veg.Text);
          v:=StrToFloat(Dog.Text)/StrToFloat(Oeg.Text);
          m:=StrToFloat(Meg.Text);
          Mer:=Floor(min(g,min(v,m)));
          Pam.Text:=FloatToStr(strToFloat(Peg.Text) * Mer);
          Label28.font.Color:=clBlack;
          PEG.font.Color:=clBlack;
          Pam.Font.Color:=clMaroon;
          Label18.Font.Color:=clMaroon;
       end;

end;

procedure TTranpLog.Frame21VAMChange(Sender: TObject);
var g,v,m: real;
    Mer:integer;
begin
with MainForm.Frame21  do
   If (VEG.Text<>'')and(OEG.Text<>'')and(MEG.Text<>'')and(GAM.Text<>'')and(DOG.Text<>'')and(Vam.Text<>'')
  Then
      if (StrToFloat(VEG.Text)<>0)and(StrToFloat(OEG.Text)<>0)and(StrToFloat(MEG.Text)<>0)and(StrToFloat(GAM.Text)<>0)and(StrToFloat(DOG.Text)<>0)and(StrToFloat(Vam.Text)<>0)
       then
       begin
          g:=StrToFloat(Gam.Text)/StrToFloat(Veg.Text);
          v:=StrToFloat(Dog.Text)/StrToFloat(Oeg.Text);
          m:=StrToFloat(Meg.Text);
          Mer:=Floor(min(g,min(v,m)));
          VEG1.Text:=FloatToStr(strToFloat(Vam.Text) / Mer);
          Label29.font.Color:=clMaroon;
          VEG1.font.Color:=clMaroon;
          Vam.Font.Color:=clBlack;
          Label16.Font.Color:=clBlack;
       end;

end;

procedure TTranpLog.Frame21VEG1Change(Sender: TObject);
var g,v,m: real;
    Mer:integer;
begin
with MainForm.Frame21  do
   If (VEG.Text<>'')and(OEG.Text<>'')and(MEG.Text<>'')and(GAM.Text<>'')and(DOG.Text<>'')and(VEG1.Text<>'')
  Then
      if (StrToFloat(VEG.Text)<>0)and(StrToFloat(OEG.Text)<>0)and(StrToFloat(MEG.Text)<>0)and(StrToFloat(GAM.Text)<>0)and(StrToFloat(DOG.Text)<>0)and(StrToFloat(VEG1.Text)<>0)
       then
       begin
          g:=StrToFloat(Gam.Text)/StrToFloat(Veg.Text);
          v:=StrToFloat(Dog.Text)/StrToFloat(Oeg.Text);
          m:=StrToFloat(Meg.Text);
          Mer:=Floor(min(g,min(v,m)));
          VAM.Text:=FloatToStr(strToFloat(VEG1.Text) * Mer);
          Label29.font.Color:=clBlack;
          VEG1.font.Color:=clBlack;
          Vam.Font.Color:=clMaroon;
          Label16.Font.Color:=clMaroon;
       end;


end;

procedure TTranpLog.Frame21DateTimePicker1Change(Sender: TObject);
begin
   Frame21.DNZ.Time:=Frame21.DateTimePicker1.Time;
end;



END.

unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, acImage, Vcl.ComCtrls, sPanel, Vcl.Mask, sMaskEdit,
  sCustomComboEdit, sToolEdit, Vcl.StdCtrls, sEdit, sGroupBox, sButton,
  sComboBox, sPageControl, Data.DB, Vcl.Grids, Vcl.DBGrids, acDBGrid, sCheckBox,
  sListBox, sCheckListBox, acProgressBar, sStatusBar, System.ImageList,
  Vcl.ImgList, acAlphaImageList, DADump, MyDump, DBAccess, MyAccess, MemDS,
  sLabel, sSkinManager, AdvUtil, AdvObj, BaseGrid, AdvGrid,
  Vcl.WinXCtrls, Filectrl, shellapi, acPNG,
  tmsAdvGridExcel, tmsuflxformats, VCLTee.chart,
  VCLTee.series, VCLTee.TeEngine, XLSSheetData5, XLSReadWriteII5, sMemo;

type
  TMain = class(TForm)
    PKiri: TsPanel;
    Bawah: TsGroupBox;
    Tengah: TsGroupBox;
    sButton2: TsButton;
    sButton1: TsButton;
    ComboOPD: TsComboBox;
    Page: TsPageControl;
    TabEntry: TsTabSheet;
    sImage1: TsImage;
    TabEdit: TsTabSheet;
    sPanel1: TsPanel;
    sImage2: TsImage;
    sGroupBox1: TsGroupBox;
    sGroupBox2: TsGroupBox;
    sComboBox2: TsComboBox;
    GridResponden: TsDBGrid;
    TabIKM: TsTabSheet;
    TabSampel: TsTabSheet;
    TabUtil: TsTabSheet;
    TabOPD: TsTabSheet;
    sPanel3: TsPanel;
    sImage4: TsImage;
    sGroupBox3: TsGroupBox;
    sButton5: TsButton;
    sButton6: TsButton;
    sGroupBox4: TsGroupBox;
    sComboBox3: TsComboBox;
    ScrollBox3: TScrollBox;
    sPanel4: TsPanel;
    sPanel5: TsPanel;
    sImage5: TsImage;
    sGroupBox6: TsGroupBox;
    sButton7: TsButton;
    sButton8: TsButton;
    ScrollBox4: TScrollBox;
    sPanel8: TsPanel;
    sButton10: TsButton;
    sButton11: TsButton;
    sButton12: TsButton;
    sButton13: TsButton;
    sButton14: TsButton;
    sButton15: TsButton;
    sButton16: TsButton;
    Statusbar: TsStatusBar;
    ImageList32: TsAlphaImageList;
    Koneksi: TMyConnection;
    Dump: TMyDump;
    Query: TMyQuery;
    sPanel9: TsPanel;
    sImage6: TsImage;
    sGroupBox9: TsGroupBox;
    sGroupBox10: TsGroupBox;
    EKategoriOPD: TsComboBox;
    ScrollBox5: TScrollBox;
    sPanel10: TsPanel;
    GridOPD: TsDBGrid;
    EKodeOPD: TsEdit;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    EnamaOPD: TsEdit;
    sLabel3: TsLabel;
    QueryOPD: TMyQuery;
    SourceOPD: TMyDataSource;
    sSkinManager1: TsSkinManager;
    sButton18: TsButton;
    sButton17: TsButton;
    sButton19: TsButton;
    sButton20: TsButton;
    sButton3: TsButton;
    sButton4: TsButton;
    ScrollBox1: TScrollBox;
    Pkanan: TsPanel;
    Kuesioner: TsImage;
    EJK: TsRadioGroup;
    Elainnya: TsEdit;
    Elayanan: TsEdit;
    EPekerjaan: TsRadioGroup;
    EPendidikan: TsRadioGroup;
    Etanggal: TsDateEdit;
    EU1: TsEdit;
    EUmur: TsEdit;
    EU2: TsEdit;
    EU3: TsEdit;
    EU4: TsEdit;
    EU5: TsEdit;
    EU6: TsEdit;
    EU7: TsEdit;
    EU8: TsEdit;
    EU9: TsEdit;
    Eid: TsEdit;
    EJam: TsRadioGroup;
    ScrollBox2: TScrollBox;
    sPanel2: TsPanel;
    sImage3: TsImage;
    sRadioGroup1: TsRadioGroup;
    sEdit1: TsEdit;
    sEdit2: TsEdit;
    sRadioGroup2: TsRadioGroup;
    sRadioGroup3: TsRadioGroup;
    sDateEdit1: TsDateEdit;
    sEdit3: TsEdit;
    sEdit4: TsEdit;
    sEdit5: TsEdit;
    sEdit6: TsEdit;
    sEdit7: TsEdit;
    sEdit8: TsEdit;
    sEdit9: TsEdit;
    sEdit10: TsEdit;
    sEdit11: TsEdit;
    sEdit12: TsEdit;
    sEdit13: TsEdit;
    sRadioGroup4: TsRadioGroup;
    sComboBox1: TsComboBox;
    sLabel4: TsLabel;
    sLabel5: TsLabel;
    QSampel: TMyQuery;
    SourceSampel: TMyDataSource;
    TabUser: TsTabSheet;
    sPanel11: TsPanel;
    sImage7: TsImage;
    sGroupBox11: TsGroupBox;
    sGroupBox12: TsGroupBox;
    sLabel6: TsLabel;
    sLabel7: TsLabel;
    sLabel8: TsLabel;
    sComboBox5: TsComboBox;
    sEdit14: TsEdit;
    sEdit15: TsEdit;
    sButton22: TsButton;
    sButton23: TsButton;
    sButton24: TsButton;
    ScrollBox6: TScrollBox;
    sPanel12: TsPanel;
    sDBGrid3: TsDBGrid;
    sLabel9: TsLabel;
    sEdit16: TsEdit;
    sComboBox6: TsComboBox;
    sLabel10: TsLabel;
    Quser: TMyQuery;
    SourceUser: TMyDataSource;
    GridDinas: TAdvStringGrid;
    sLabel11: TsLabel;
    sLabel12: TsLabel;
    sComboBox7: TsComboBox;
    sLabel13: TsLabel;
    sComboBox8: TsComboBox;
    sButton21: TsButton;
    sComboBox9: TsComboBox;
    sLabel14: TsLabel;
    sComboBox10: TsComboBox;
    sLabel15: TsLabel;
    animasi: TActivityIndicator;
    sGroupBox5: TsGroupBox;
    sLabel16: TsLabel;
    sLabel17: TsLabel;
    sLabel18: TsLabel;
    sLabel19: TsLabel;
    sComboBox4: TsComboBox;
    sComboBox11: TsComboBox;
    sComboBox12: TsComboBox;
    sButton9: TsButton;
    sComboBox13: TsComboBox;
    sLabel20: TsLabel;
    sComboBox14: TsComboBox;
    sLabel21: TsLabel;
    sEdit17: TsEdit;
    sComboBox15: TsComboBox;
    sLabel22: TsLabel;
    sLabel23: TsLabel;
    sComboBox16: TsComboBox;
    GridSampel: TAdvStringGrid;
    ADVExcel: TAdvGridExcelIO;
    Split: TMyDump;
    OpenDialog1: TOpenDialog;
    OpenDialog2: TOpenDialog;
    sTabSheet1: TsTabSheet;
    sPanel6: TsPanel;
    sImage8: TsImage;
    sGroupBox7: TsGroupBox;
    sButton25: TsButton;
    sButton26: TsButton;
    sGroupBox8: TsGroupBox;
    sLabel24: TsLabel;
    sLabel25: TsLabel;
    sLabel26: TsLabel;
    sLabel27: TsLabel;
    sLabel28: TsLabel;
    sComboBox17: TsComboBox;
    sComboBox18: TsComboBox;
    sComboBox19: TsComboBox;
    sButton27: TsButton;
    sComboBox20: TsComboBox;
    sComboBox21: TsComboBox;
    ScrollBox7: TScrollBox;
    sPanel7: TsPanel;
    GridBanding: TAdvStringGrid;
    sLabel29: TsLabel;
    sComboBox22: TsComboBox;
    XLS: TXLSReadWriteII5;
    sGroupBox13: TsGroupBox;
    sLabel30: TsLabel;
    sComboBox23: TsComboBox;
    sComboBox24: TsComboBox;
    sComboBox25: TsComboBox;
    sLabel31: TsLabel;
    sLabel32: TsLabel;
    sComboBox26: TsComboBox;
    sLabel33: TsLabel;
    sButton28: TsButton;
    sMemo1: TsMemo;
    sMemo2: TsMemo;
    sTabSheet2: TsTabSheet;
    sPanel13: TsPanel;
    sImage9: TsImage;
    sGroupBox15: TsGroupBox;
    sLabel36: TsLabel;
    sLabel37: TsLabel;
    sLabel38: TsLabel;
    sComboBox27: TsComboBox;
    sComboBox28: TsComboBox;
    sComboBox29: TsComboBox;
    sButton31: TsButton;
    ScrollBox8: TScrollBox;
    sLabel39: TsLabel;
    sComboBox30: TsComboBox;
    sMemo3: TsMemo;
    sLabel34: TsLabel;
    sLabel35: TsLabel;
    sGroupBox14: TsGroupBox;
    sPanel14: TsPanel;
    procedure QueryOPDAfterScroll(DataSet: TDataSet);
    procedure sButton19Click(Sender: TObject);
    procedure sButton17Click(Sender: TObject);
    procedure sButton18Click(Sender: TObject);
    procedure EtanggalKeyPress(Sender: TObject; var Key: Char);
    procedure EJamKeyPress(Sender: TObject; var Key: Char);
    procedure EU1KeyPress(Sender: TObject; var Key: Char);
    procedure EU2KeyPress(Sender: TObject; var Key: Char);
    procedure EU6KeyPress(Sender: TObject; var Key: Char);
    procedure EU7KeyPress(Sender: TObject; var Key: Char);
    procedure EU3KeyPress(Sender: TObject; var Key: Char);
    procedure EU8KeyPress(Sender: TObject; var Key: Char);
    procedure EU4KeyPress(Sender: TObject; var Key: Char);
    procedure EU9KeyPress(Sender: TObject; var Key: Char);
    procedure EU5KeyPress(Sender: TObject; var Key: Char);
    procedure EJKKeyPress(Sender: TObject; var Key: Char);
    procedure EUmurKeyPress(Sender: TObject; var Key: Char);
    procedure EPendidikanKeyPress(Sender: TObject; var Key: Char);
    procedure EPekerjaanKeyPress(Sender: TObject; var Key: Char);
    procedure ElainnyaKeyPress(Sender: TObject; var Key: Char);
    procedure ElayananKeyPress(Sender: TObject; var Key: Char);
    procedure sButton1Click(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure EidKeyPress(Sender: TObject; var Key: Char);
    procedure sComboBox2Enter(Sender: TObject);
    procedure sButton4Click(Sender: TObject);
    procedure QSampelAfterScroll(DataSet: TDataSet);
    procedure sButton24Click(Sender: TObject);
    procedure sButton22Click(Sender: TObject);
    procedure EKodeOPDKeyPress(Sender: TObject; var Key: Char);
    procedure EnamaOPDKeyPress(Sender: TObject; var Key: Char);
    procedure EKategoriOPDKeyPress(Sender: TObject; var Key: Char);
    procedure sEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure sEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure sEdit16KeyPress(Sender: TObject; var Key: Char);
    procedure sComboBox5KeyPress(Sender: TObject; var Key: Char);
    procedure sComboBox6KeyPress(Sender: TObject; var Key: Char);
    procedure QuserAfterScroll(DataSet: TDataSet);
    procedure sButton23Click(Sender: TObject);
    procedure sButton3Click(Sender: TObject);
    procedure sEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure sComboBox7Change(Sender: TObject);
    procedure sComboBox8Enter(Sender: TObject);
    procedure sButton21Click(Sender: TObject);
    procedure sComboBox3Enter(Sender: TObject);
    procedure sButton11Click(Sender: TObject);
    procedure sButton5Click(Sender: TObject);
    procedure sButton6Click(Sender: TObject);
    procedure sEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure EidEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sComboBox15Change(Sender: TObject);
    procedure sComboBox16Change(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure sComboBox4Enter(Sender: TObject);
    procedure sComboBox11Change(Sender: TObject);
    procedure sComboBox12Enter(Sender: TObject);
    procedure sButton9Click(Sender: TObject);
    procedure sButton8Click(Sender: TObject);
    procedure ADVExcelExportColumnFormat(Sender: TObject;
      GridCol, GridRow, XlsCol, XlsRow: Integer; const Value: WideString;
      var ExportCellAsString: Boolean);
    procedure sButton7Click(Sender: TObject);
    procedure sButton12Click(Sender: TObject);
    procedure sButton13Click(Sender: TObject);
    procedure sButton14Click(Sender: TObject);
    procedure sButton16Click(Sender: TObject);
    procedure sDBGrid3Enter(Sender: TObject);
    procedure GridOPDEnter(Sender: TObject);
    procedure sComboBox17Enter(Sender: TObject);
    procedure sComboBox21Change(Sender: TObject);
    procedure sComboBox18Change(Sender: TObject);
    procedure sButton27Click(Sender: TObject);
    procedure sButton25Click(Sender: TObject);
    procedure sButton26Click(Sender: TObject);
    procedure sComboBox23Enter(Sender: TObject);
    procedure sComboBox24Change(Sender: TObject);
    procedure sButton28Click(Sender: TObject);
    procedure sButton10Click(Sender: TObject);
    procedure sButton15Click(Sender: TObject);
    procedure sButton20Click(Sender: TObject);
    procedure sMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboOPDChange(Sender: TObject);
    procedure sComboBox8Change(Sender: TObject);
    procedure sComboBox12Change(Sender: TObject);
    procedure sComboBox26Change(Sender: TObject);
    procedure sComboBox6Change(Sender: TObject);
    procedure sMemo2KeyPress(Sender: TObject; var Key: Char);
    procedure sComboBox28Change(Sender: TObject);
    procedure sComboBox1Change(Sender: TObject);
    procedure sComboBox27Enter(Sender: TObject);
    procedure sButton31Click(Sender: TObject);
    procedure sComboBox30Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure CreateParams(var Params: TCreateParams); override;
  end;

type
  TIKM = array [1 .. 11] of string;
  TSampel = array [1 .. 9] of string;
function getIKM(const par: string; ctahun, cperiod: TsComboBox;indexyear:integer): TIKM;
function PublishSampel(const dinas: string;
  ctahun, cperiod: TsComboBox): TSampel;
procedure GenerateDBase(path, sqluser, sqldinas: string);
Procedure loadopd(c: TsComboBox);
procedure combosetting;
function isDinas(kode:string):boolean;

var
  Main: TMain;

implementation

{$R *.dfm}

uses ULogin, Ugrafik;

var
  isappendSampel, isAppendOPD, isappendUser: Boolean;

function isDinas(kode:string):boolean;
begin
  try
   if (StrToInt(kode)<10000) and (StrToInt(kode)>0) then
   result:=true else result:=false;
  except
   result:=false;
  end;
end;

Procedure loadopd(c: TsComboBox);
var
  Q: TMyQuery;
begin
  Q := TMyQuery.Create(NIL);
  try
    Q.Connection := Main.Koneksi;
    c.Items.Clear;
    if akses='PUSLAH' then
    Q.SQL.Text := 'SELECT * FROM dinas ORDER BY Kode ASC'
    else
    Q.SQL.Text := 'SELECT * FROM dinas  where kode="'+dinas+'" ORDER BY Kode ASC';
    Q.Open;
    Q.First;
    while Not Q.Eof do
    begin
      c.Items.Add(Q.FieldByName('Kode').AsString + ' ' +
        Q.FieldByName('Nama_Dinas').AsString);
      Q.Next;
    end;
    Q.Close;
  finally
    Q.Free;
  end;
end;

procedure combosetting;
begin
  with Main do
  begin
    loadopd(ComboOPD);
    loadopd(sComboBox1);
    loadopd(sComboBox3);
    loadopd(sComboBox26);
    loadopd(sComboBox6);
    loadopd(sComboBox28);
  end;
end;

procedure GenerateDBase(path, sqluser, sqldinas: string);
var
  SL: Tstringlist;
  Userpos, DinasPos: Integer;
begin
  SL := Tstringlist.Create;
  try
    SL.LoadFromFile(ExtractFilePath(Application.ExeName) + '\dBase.bin');
    Userpos := SL.IndexOf('POSDEFUSER');
    DinasPos := SL.IndexOf('POSDEFDINAS');
    if Userpos >= 0 then
      SL[Userpos] := sqluser;
    if DinasPos >= 0 then
      SL[DinasPos] := sqldinas;
    SL.SaveToFile(path);
  finally
    SL.Free;
  end;
end;

function PublishSampel(const dinas: string;
  ctahun, cperiod: TsComboBox): TSampel;
var
  up, down: string;
  Q: TMyQuery;
begin
  up := ctahun.Text + Format('%.*d',
    [2, (12 div cperiod.Items.Count) * (cperiod.ItemIndex + 1)]) + '32';
  down := ctahun.Text + Format('%.*d',
    [2, ((12 div cperiod.Items.Count) * (cperiod.ItemIndex)) + 1]) + '00';
  try
    Q := TMyQuery.Create(NIL);
    Q.Connection := Main.Koneksi;
    Q.SQL.Text :=
      'select SUM(IF(JK=1,1,0)) AS Laki,SUM(IF(JK=2,1,0))as Bini, SUM(IF(Pendidikan=1,1,0))as SD, '
      + 'SUM(IF(Pendidikan=2,1,0))as SMP, SUM(IF(Pendidikan=3,1,0))as SMA, ' +
      'SUM(IF(Pendidikan=4,1,0))as S1,SUM(IF(Pendidikan=5,1,0))as S2,SUM(IF(Pendidikan=6,1,0))as S3,Count(*) as Total from sampel  WHERE dinas='
      + dinas + ' and tanggal<' + up + ' and tanggal >' + down;
    Q.Open;
    if not Q.IsEmpty then
    begin
      result[1] := Q.FieldByName('Laki').AsString;
      result[2] := Q.FieldByName('Bini').AsString;
      result[3] := Q.FieldByName('SD').AsString;
      result[4] := Q.FieldByName('SMP').AsString;
      result[5] := Q.FieldByName('SMA').AsString;
      result[6] := Q.FieldByName('S1').AsString;
      result[7] := Q.FieldByName('S2').AsString;
      result[8] := Q.FieldByName('S3').AsString;
      result[9] := Q.FieldByName('Total').AsString;
    end;
    Q.Close;
  finally
    Q.Free;
  end;
end;

function getIKM(const par: string; ctahun, cperiod: TsComboBox;indexyear:integer): TIKM;
var
  up, down: string;
  IKM: Single;
  flagdinas: Boolean;
  Q: TMyQuery;
  dTahun,pIndex,xdiv:integer;
begin
  flagdinas := false;
  dTahun:=strtoint(ctahun.Text);
  pIndex:=cperiod.ItemIndex-indexyear;
  if pIndex<0 then
  begin
    xdiv:=(abs(pIndex+1)div cperiod.Items.Count)+1;
    dTahun:=strtoint(ctahun.Text)-xdiv;
    pIndex:=pIndex+xdiv*cperiod.Items.Count;
  end;
  up := inttostr(dTahun) + Format('%.*d',
    [2, (12 div cperiod.Items.Count) * (pIndex + 1)]) + '32';
  down := inttostr(dTahun) + Format('%.*d',
    [2, ((12 div cperiod.Items.Count) * (pIndex)) + 1]) + '00';
  try
    Q := TMyQuery.Create(NIL);
    Q.Connection := Main.Koneksi;
    if par = 'All' then
      Q.SQL.Text :=
        'SELECT SUM(u1)/COUNT(*) AS x1, SUM(u2)/COUNT(*) AS x2 ,SUM(u3)/COUNT(*) AS x3,'
        + 'SUM(u4)/COUNT(*) AS x4,SUM(u5)/COUNT(*) AS x5,SUM(u6)/COUNT(*) AS x6,'
        + 'SUM(u7)/COUNT(*) AS x7,SUM(u8)/COUNT(*) AS x8,SUM(u9)/COUNT(*) AS x9 '
        + 'FROM sampel Where tanggal<' + up + ' and tanggal >' + down
    else if isDinas(par) then
     begin
      Q.SQL.Text :=
        'SELECT dinas.nama_dinas AS rincian,SUM(u1)/COUNT(*) AS x1,SUM(u2)/COUNT(*) AS x2 ,SUM(u3)/COUNT(*) AS x3,'
        + 'SUM(u4)/COUNT(*) AS x4,SUM(u5)/COUNT(*) AS x5,SUM(u6)/COUNT(*) AS x6,'
        + 'SUM(u7)/COUNT(*) AS x7,SUM(u8)/COUNT(*) AS x8,SUM(u9)/COUNT(*) AS x9 '
        + 'FROM sampel  INNER JOIN dinas ON dinas.kode=sampel.dinas WHERE dinas.Kode='
        + par + ' AND tanggal<' + up + ' and tanggal >' + down;
      flagdinas := true;
    end
    else
    Q.SQL.Text :=
        'SELECT kategori, SUM(u1)/COUNT(*) AS x1,SUM(u2)/COUNT(*) AS x2 ,SUM(u3)/COUNT(*) AS x3,'
        + 'SUM(u4)/COUNT(*) AS x4,SUM(u5)/COUNT(*) AS x5,SUM(u6)/COUNT(*) AS x6,'
        + 'SUM(u7)/COUNT(*) AS x7,SUM(u8)/COUNT(*) AS x8,SUM(u9)/COUNT(*) AS x9 '
        + 'FROM sampel  INNER JOIN dinas ON dinas.kode=sampel.dinas WHERE dinas.Kategori="'
        + par + '" AND tanggal<' + up + ' and tanggal >' + down;
    Q.Open;
    if not Q.IsEmpty then
    begin
      IKM := (25 / 9) * (Q['x1'] + Q['x2'] + Q['x3'] + Q['x4'] + Q['x5'] +
        Q['x6'] + Q['x7'] + Q['x8'] + Q['x9']);
      if par = 'All' then
        result[1] := 'Semua Unit Layanan'
      else if flagdinas then
        result[1] := Q.FieldByName('rincian').AsString
      else
        result[1] := Q.FieldByName('kategori').AsString;
      result[2] := formatfloat('0.00', Q['x1']);
      result[3] := formatfloat('0.00', Q['x2']);
      result[4] := formatfloat('0.00', Q['x3']);
      result[5] := formatfloat('0.00', Q['x4']);
      result[6] := formatfloat('0.00', Q['x5']);
      result[7] := formatfloat('0.00', Q['x6']);
      result[8] := formatfloat('0.00', Q['x7']);
      result[9] := formatfloat('0.00', Q['x8']);
      result[10] := formatfloat('0.00', Q['x9']);
      result[11] := formatfloat('0.00', IKM);
    end;
    Q.Close;
  finally
    Q.Free;
  end;
end;

procedure TMain.CreateParams(var Params: TCreateParams);
begin
  inherited;
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
  Params.WndParent := 0;
end;

procedure TMain.ADVExcelExportColumnFormat(Sender: TObject;
  GridCol, GridRow, XlsCol, XlsRow: Integer; const Value: WideString;
  var ExportCellAsString: Boolean);
begin
  ExportCellAsString := (GridCol = 1);
end;

procedure TMain.ComboOPDChange(Sender: TObject);
begin
  ComboOPD.Hint := ComboOPD.Text;
  IF length(copy(ComboOPD.Text,6,LENGTH(ComboOPD.Text)-5))>60 then
  slabel34.Caption:=uppercase(copy(ComboOPD.Text,6,60)+'...') else
  slabel34.Caption:=uppercase(copy(ComboOPD.Text,6,LENGTH(ComboOPD.Text)-5));
  Eid.OnEnter(sender);
end;

procedure TMain.EidEnter(Sender: TObject);
begin
  if ComboOPD.Text <> '' then
  begin
    Query.SQL.Text := 'SELECT MAX(RIGHT(Kode,6)) as a FROM sampel WHERE dinas='
      + copy(ComboOPD.Text, 1, 4);
    Query.Open;
    try
      if Query.FieldByName('a').AsString <> '' then
        Eid.Text := inttostr(strtoint(Query.FieldByName('a').AsString) + 1)
      else
        Eid.Text := '1';
    finally
      Query.Close;
    end;
  end;
end;

procedure TMain.EidKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(Sender as TwinControl, true, true);
  end;
end;

procedure TMain.EJamKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(Sender as TwinControl, true, true);
  end;
end;

procedure TMain.EJKKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(Sender as TwinControl, true, true);
  end;
end;

procedure TMain.EKategoriOPDKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(Sender as TwinControl, true, true);
  end;
end;

procedure TMain.EKodeOPDKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(Sender as TwinControl, true, true);
  end;
end;

procedure TMain.ElainnyaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(Sender as TwinControl, true, true);
  end;
end;

procedure TMain.ElayananKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(Sender as TwinControl, true, true);
  end;
end;

procedure TMain.EnamaOPDKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(Sender as TwinControl, true, true);
  end;
end;

procedure TMain.EPekerjaanKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(Sender as TwinControl, true, true);
  end;
end;

procedure TMain.EPendidikanKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(Sender as TwinControl, true, true);
  end;
end;

procedure TMain.EtanggalKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(Sender as TwinControl, true, true);
  end;
end;

procedure TMain.EU1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(Sender as TwinControl, true, true);
  end
  else if not Charinset(Key, ['1' .. '4']) then
  begin
    messagedlg('Isian hanya 1-4', mterror, [mbok], 0);
    Key := #0;
  end;
end;

procedure TMain.EU2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(Sender as TwinControl, true, true);
  end
  else if not Charinset(Key, ['1' .. '4']) then
  begin
    messagedlg('Isian hanya 1-4', mterror, [mbok], 0);
    Key := #0;
  end;
end;

procedure TMain.EU3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(Sender as TwinControl, true, true);
  end
  else if not Charinset(Key, ['1' .. '4']) then
  begin
    messagedlg('Isian hanya 1-4', mterror, [mbok], 0);
    Key := #0;
  end;
end;

procedure TMain.EU4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(Sender as TwinControl, true, true);
  end
  else if not Charinset(Key, ['1' .. '4']) then
  begin
    messagedlg('Isian hanya 1-4', mterror, [mbok], 0);
    Key := #0;
  end;
end;

procedure TMain.EU5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(Sender as TwinControl, true, true);
  end
  else if not Charinset(Key, ['1' .. '4']) then
  begin
    messagedlg('Isian hanya 1-4', mterror, [mbok], 0);
    Key := #0;
  end;
end;

procedure TMain.EU6KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(Sender as TwinControl, true, true);
  end
  else if not Charinset(Key, ['1' .. '4']) then
  begin
    messagedlg('Isian hanya 1-4', mterror, [mbok], 0);
    Key := #0;
  end;
end;

procedure TMain.EU7KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(Sender as TwinControl, true, true);
  end
  else if not Charinset(Key, ['1' .. '4']) then
  begin
    messagedlg('Isian hanya 1-4', mterror, [mbok], 0);
    Key := #0;
  end;
end;

procedure TMain.EU8KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(Sender as TwinControl, true, true);
  end
  else if not Charinset(Key, ['1' .. '4']) then
  begin
    messagedlg('Isian hanya 1-4', mterror, [mbok], 0);
    Key := #0;
  end;
end;

procedure TMain.EU9KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(Sender as TwinControl, true, true);
  end
  else if not Charinset(Key, ['1' .. '4']) then
  begin
    messagedlg('Isian hanya 1-4', mterror, [mbok], 0);
    Key := #0;
  end;
end;

procedure TMain.EUmurKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(Sender as TwinControl, true, true);
  end;
end;

procedure TMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := false;
  Main.Hide;
  Login.Show;
end;

procedure TMain.FormShow(Sender: TObject);
begin
  Statusbar.Panels.Items[2].Text := 'USER: ' + User + '  ';
  combosetting;
  Login.Hide;
  if akses = 'PUSLAH' then
  begin
    EKodeOPD.Enabled := true;
    EKategoriOPD.Enabled := true;
    sButton18.Enabled := true;
    sButton19.Enabled := true;
    sButton20.Enabled := true;
    sComboBox5.Enabled := true;
    sComboBox7.Enabled := true;
    sComboBox11.Enabled := true;
    sTabSheet1.TabVisible := true;
    sComboBox6.Enabled := true;
    sComboBox1.Enabled := true;
    ComboOPD.Enabled := true;
    sComboBox28.Enabled := true;
    sComboBox26.Enabled := true;
  end
  else
  begin
    EKodeOPD.Enabled := false;
    EKategoriOPD.Enabled := false;
    sButton18.Enabled := false;
    sButton19.Enabled := false;
    sButton20.Enabled := false;
    sComboBox5.Enabled := false;
    sComboBox7.Enabled := false;
    sComboBox11.Enabled := false;
    sTabSheet1.TabVisible := false;
    sComboBox6.Enabled := false;
    sComboBox6.ItemIndex := 0;
    sComboBox1.Enabled := false;
    sComboBox1.ItemIndex := 0;
    ComboOPD.Enabled := false;
    ComboOPD.ItemIndex := 0;
    sComboBox28.Enabled := false;
    sComboBox28.ItemIndex := 0;
    sComboBox26.Enabled := false;
    sComboBox26.ItemIndex := 0;
  end;
end;

procedure TMain.GridOPDEnter(Sender: TObject);
begin
  QueryOPD.AfterScroll(QueryOPD);
end;

procedure TMain.QSampelAfterScroll(DataSet: TDataSet);
begin
  if (not isappendSampel) and (QSampel.RecordCount > 0) then
  begin
    sEdit13.Text :=
      inttostr(strtoint(copy(QSampel.FieldByName('Kode').AsString, 9, 6)));
    sDateEdit1.Date :=
      Encodedate(strtoint(copy(QSampel.FieldByName('Tanggal').AsString, 1, 4)),
      strtoint(copy(QSampel.FieldByName('Tanggal').AsString, 5, 2)),
      strtoint(copy(QSampel.FieldByName('Tanggal').AsString, 7, 2)));
    sRadioGroup4.ItemIndex := QSampel.FieldByName('Jam').AsInteger - 1;
    sRadioGroup1.ItemIndex := QSampel.FieldByName('JK').AsInteger - 1;
    sRadioGroup3.ItemIndex := QSampel.FieldByName('Pendidikan').AsInteger - 1;
    sRadioGroup2.ItemIndex := QSampel.FieldByName('Pekerjaan').AsInteger - 1;
    sEdit4.Text := QSampel.FieldByName('Umur').AsString;
    sEdit1.Text := QSampel.FieldByName('Lainnya').AsString;
    sEdit2.Text := QSampel.FieldByName('Layanan').AsString;
    sEdit3.Text := QSampel.FieldByName('U1').AsString;
    sEdit5.Text := QSampel.FieldByName('U2').AsString;
    sEdit6.Text := QSampel.FieldByName('U3').AsString;
    sEdit7.Text := QSampel.FieldByName('U4').AsString;
    sEdit8.Text := QSampel.FieldByName('U5').AsString;
    sEdit9.Text := QSampel.FieldByName('U6').AsString;
    sEdit10.Text := QSampel.FieldByName('U7').AsString;
    sEdit11.Text := QSampel.FieldByName('U8').AsString;
    sEdit12.Text := QSampel.FieldByName('U9').AsString;
    sMemo2.Text := QSampel.FieldByName('Saran').AsString;
  end;
end;

procedure TMain.QueryOPDAfterScroll(DataSet: TDataSet);
begin
  if not isAppendOPD then
  begin
    sButton18.Caption := '&Tambah';
    sButton17.Enabled := true;
    EKodeOPD.Text := QueryOPD.FieldByName('Kode').AsString;
    EnamaOPD.Text := QueryOPD.FieldByName('Nama_Dinas').AsString;
    EKategoriOPD.ItemIndex := EKategoriOPD.Items.IndexOf
      (QueryOPD.FieldByName('Kategori').AsString);
  End;
end;

procedure TMain.QuserAfterScroll(DataSet: TDataSet);
begin
  if not isappendUser then
  begin
    sButton22.Caption := '&Tambah';
    sButton23.Enabled := true;
    sEdit14.Text := Quser.FieldByName('Nama').AsString;
    sEdit16.Text := '';
    sEdit17.Text := Quser.FieldByName('Phone').AsString;
    sEdit15.Text := Quser.FieldByName('Username').AsString;
    sEdit16.Text := Quser.FieldByName('Password').AsString;
    sComboBox5.ItemIndex := sComboBox5.Items.IndexOf(Quser.FieldByName('Level')
      .AsString);
    sComboBox6.ItemIndex := sComboBox6.Items.IndexOf(Quser.FieldByName('dinas')
      .AsString + ' ' + Quser.FieldByName('nama_dinas').AsString);
  End;
end;

procedure TMain.sButton10Click(Sender: TObject);
var
  sdir: string;
  thn: string;
  tanggal:Tdate;
  tahun,bulan,tgl:word;
begin
  tanggal := now;
  Decodedate(tanggal, tahun, bulan, tgl);
  thn := inputbox('Input Tahun', 'Tahun Survei', inttostr(tahun));
  if (sComboBox26.Text <> '') and (strtoint(thn) > tahun) then
  begin
    if selectdirectory('Pilih Folder untuk Menyimpan', '', sdir) then
    begin
      XLS.filename := ExtractFilePath(Application.ExeName) + '\form.xlsx';
      XLS.Read;
      XLS[0].AsString[4, 1] :=
        'KUESIONER SURVEI KEPUASAN MASYARAKAT TAHUN ' + thn;
      XLS[0].AsString[4, 2] :=
        uppercase(copy(sComboBox26.Text, 6, length(sComboBox26.Text) - 4));
      XLS.filename := excludetrailingpathdelimiter(sdir) + '\FORM SKM ' +
        copy(sComboBox26.Text, 6, length(sComboBox26.Text) - 4) + '.xlsx';
      XLS.Write;
      if messagedlg('Buka Folder?', mtConfirmation, mbyesno, 0) = mryes then
        ShellExecute(Application.Handle, 'open', 'explorer.exe', PChar(sdir),
          nil, SW_NORMAL);
    end;
  end
  else
    messagedlg('Silakan Lengkapi Isian Tahun dan Pilih Dinas Terlebih Dahulu',
      mterror, [mbok], 0);
end;

procedure TMain.sButton11Click(Sender: TObject);
var
  tanggal: Tdate;
  tahun, bulan, tgl: word;
  sdir: string;
begin
  tanggal := now;
  Decodedate(tanggal, tahun, bulan, tgl);
  if selectdirectory('Pilih Folder untuk Menyimpan', '', sdir) then
  begin
    try
      animasi.Animate := true;
      Statusbar.Panels.Items[1].Text := 'Loading.... Please Wait....';
      Dump.BackupToFile(excludetrailingpathdelimiter(sdir) + '\Backup_' +
        inttostr(tgl) + inttostr(bulan) + inttostr(tahun) + '.bskm');
      if messagedlg('Buka Folder?', mtConfirmation, mbyesno, 0) = mryes then
        ShellExecute(Application.Handle, 'open', 'explorer.exe', PChar(sdir),
          nil, SW_NORMAL);
    finally
      animasi.Animate := false;
      Statusbar.Panels.Items[1].Text := '';
    end;
  end;
end;

procedure TMain.sButton12Click(Sender: TObject);
var
  sdir: string;
  Q: TMyQuery;
  batasatas, batasbawah: string;
  j: Integer;
begin
  if (sComboBox23.Text <> '') and (sComboBox24.Text <> '') and
    (sComboBox25.Text <> '') and (sComboBox26.Text <> '') then
  begin
    batasatas := sComboBox23.Text + Format('%.*d',
      [2, (12 div sComboBox25.Items.Count) * (sComboBox25.ItemIndex +
      1)]) + '32';
    batasbawah := sComboBox23.Text + Format('%.*d',
      [2, ((12 div sComboBox25.Items.Count) * (sComboBox25.ItemIndex)) +
      1]) + '00';
    if selectdirectory('Pilih Folder untuk Menyimpan', '', sdir) then
    begin
      animasi.Animate := true;
      Statusbar.Panels.Items[1].Text := 'Loading.... Please Wait....';
      Q := TMyQuery.Create(NIL);
      try
        XLS.filename := ExtractFilePath(Application.ExeName) + '\xls.xlsx';
        XLS.Read;
        Q.Connection := Koneksi;
        Q.SQL.Text := 'SELECT * FROM sampel where dinas=' +
          copy(sComboBox26.Text, 1, 4) + ' and tanggal<' + batasatas +
          ' and tanggal >' + batasbawah + ' Order by Kode ASC';
        Q.Open;
        Q.First;
        j := 1;
        while not Q.Eof do
        begin
          Statusbar.Panels.Items[1].Text := 'Loading ' + inttostr(j) + ' of ' +
            inttostr(Q.RecordCount);
          XLS[0].InsertRows(j, 1);
          XLS[0].AsString[0, j] := Q.FieldByName('Kode').AsString;
          XLS[0].AsString[1, j] := Q.FieldByName('Dinas').AsString;
          XLS[0].AsInteger[2, j] := Q.FieldByName('Tanggal').AsInteger;
          XLS[0].AsInteger[3, j] := Q.FieldByName('Jam').AsInteger;
          XLS[0].AsInteger[4, j] := Q.FieldByName('JK').AsInteger;
          XLS[0].AsInteger[5, j] := Q.FieldByName('Pendidikan').AsInteger;
          XLS[0].AsInteger[6, j] := Q.FieldByName('Pekerjaan').AsInteger;
          XLS[0].AsInteger[7, j] := Q.FieldByName('Umur').AsInteger;
          XLS[0].AsString[8, j] := Q.FieldByName('Lainnya').AsString;
          XLS[0].AsString[9, j] := Q.FieldByName('Layanan').AsString;
          XLS[0].AsInteger[10, j] := Q.FieldByName('u1').AsInteger;
          XLS[0].AsInteger[11, j] := Q.FieldByName('u2').AsInteger;
          XLS[0].AsInteger[12, j] := Q.FieldByName('u3').AsInteger;
          XLS[0].AsInteger[13, j] := Q.FieldByName('u4').AsInteger;
          XLS[0].AsInteger[14, j] := Q.FieldByName('u5').AsInteger;
          XLS[0].AsInteger[15, j] := Q.FieldByName('u6').AsInteger;
          XLS[0].AsInteger[16, j] := Q.FieldByName('u7').AsInteger;
          XLS[0].AsInteger[17, j] := Q.FieldByName('u8').AsInteger;
          XLS[0].AsInteger[18, j] := Q.FieldByName('u9').AsInteger;
          XLS[0].AsString[19, j] := Q.FieldByName('saran').AsString;
          Q.Next;
          inc(j);
        end;
      finally
        Q.Free;
      end;
      XLS.filename := excludetrailingpathdelimiter(sdir) + '\DATA SKM ' +
        copy(sComboBox26.Text, 6, length(sComboBox26.Text) - 4) + ' ' +
        sComboBox25.Text + ' ' + sComboBox23.Text + '.xlsx';
      XLS.Write;
      animasi.Animate := false;
      Statusbar.Panels.Items[1].Text := '';
      if messagedlg('Buka Folder?', mtConfirmation, mbyesno, 0) = mryes then
        ShellExecute(Application.Handle, 'open', 'explorer.exe', PChar(sdir),
          nil, SW_NORMAL);
    end;
  end
  else
    messagedlg('Silakan Lengkapi Pilihan yang Ada', mterror, [mbok], 0);
end;

procedure TMain.sButton13Click(Sender: TObject);
var
  tanggal: Tdate;
  tahun, bulan, tgl: word;
  sdir: string;
begin
  tanggal := now;
  Decodedate(tanggal, tahun, bulan, tgl);
  if selectdirectory('Pilih Folder untuk Menyimpan', '', sdir) then
  begin
    try
      animasi.Animate := true;
      Statusbar.Panels.Items[1].Text := 'Loading.... Please Wait....';
      Split.BackupToFile(excludetrailingpathdelimiter(sdir) + '\Kirim_' +
        inttostr(tgl) + inttostr(bulan) + inttostr(tahun) + '.kskm');
      if messagedlg('Buka Folder?', mtConfirmation, mbyesno, 0) = mryes then
        ShellExecute(Application.Handle, 'open', 'explorer.exe', PChar(sdir),
          nil, SW_NORMAL);
    finally
      animasi.Animate := false;
      Statusbar.Panels.Items[1].Text := '';
    end;
  end;
end;

procedure TMain.sButton14Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
    try
      Dump.RestoreFromFile(OpenDialog1.filename);
      messagedlg('Gabung Data Berhasil', mtinformation, [mbok], 0);
    except
      messagedlg('Gabung Data Gagal', mterror, [mbok], 0);
    end;
end;

procedure TMain.sButton15Click(Sender: TObject);
var
  sdir: string;
  dSampel: TSampel;
  dIKM: TIKM;
  peringkat: string;
begin
  if (sComboBox23.Text <> '') and (sComboBox24.Text <> '') and
    (sComboBox25.Text <> '') and (sComboBox26.Text <> '') then
  begin
    if selectdirectory('Pilih Folder untuk Menyimpan', '', sdir) then
    begin
      dSampel := PublishSampel(copy(sComboBox26.Text, 1, 4), sComboBox23,
        sComboBox25);
      dIKM := getIKM(copy(sComboBox26.Text, 1, 4), sComboBox23, sComboBox25,0);
      if strtofloat(dIKM[11]) >= 88.31 then
        peringkat := 'SANGAT BAIK'
      else if strtofloat(dIKM[11]) >= 76.61 then
        peringkat := 'BAIK'
      else if strtofloat(dIKM[11]) >= 65.00 then
        peringkat := 'KURANG BAIK'
      else
        peringkat := 'TIDAK BAIK';
      XLS.filename := ExtractFilePath(Application.ExeName) + '\publish.xlsx';
      XLS.Read;
      XLS[0].AsString[7, 5] :=
        uppercase(copy(sComboBox26.Text, 6, length(sComboBox26.Text) - 4));
      XLS[0].AsString[7, 6] := 'PERIODE ' +
        uppercase(sComboBox25.Text + ' ' + sComboBox23.Text);
      XLS[0].AsString[7, 10] := copy(dIKM[11], 1, 2);
      XLS[0].AsString[16, 22] := copy(dIKM[11], 3, 3);
      XLS[0].AsString[7, 25] := peringkat;
      XLS[0].AsString[30, 11] := dSampel[9];
      XLS[0].AsString[30, 14] := dSampel[1];
      XLS[0].AsString[30, 15] := dSampel[2];
      XLS[0].AsString[30, 17] := dSampel[3];
      XLS[0].AsString[30, 18] := dSampel[4];
      XLS[0].AsString[30, 19] := dSampel[5];
      XLS[0].AsString[30, 20] := dSampel[6];
      XLS[0].AsString[30, 21] := dSampel[7];
      XLS[0].AsString[30, 22] := dSampel[8];
      XLS.filename := excludetrailingpathdelimiter(sdir) + '\PUBLISH SKM ' +
        copy(sComboBox26.Text, 6, length(sComboBox26.Text) - 4) + '.xlsx';
      XLS.Write;
      if messagedlg('Buka Folder?', mtConfirmation, mbyesno, 0) = mryes then
        ShellExecute(Application.Handle, 'open', 'explorer.exe', PChar(sdir),
          nil, SW_NORMAL);
    end;
  end
  else
    messagedlg('Silakan Lengkapi Pilihan Terlebih Dahulu', mterror, [mbok], 0);
end;

procedure TMain.sButton16Click(Sender: TObject);
begin
  if OpenDialog2.Execute then
  begin
    try
      Dump.RestoreFromFile(OpenDialog2.filename);
      messagedlg('Restore Data Berhasil', mtinformation, [mbok], 0);
    except
      messagedlg('Restore Data Gagal', mterror, [mbok], 0);
    end;
  end;
end;

procedure TMain.sButton17Click(Sender: TObject);
begin
  if (EKodeOPD.Text = '') then
  begin
    messagedlg('Kode Unit Kerja kosong', mterror, [mbok], 0);
    EKategoriOPD.SetFocus;
  end
  else if (EnamaOPD.Text = '') then
  begin
    messagedlg('Isian Nama Unit Kerja kosong', mterror, [mbok], 0);
    EnamaOPD.SetFocus;
  end
  else if (EKategoriOPD.Text = '') then
  begin
    messagedlg('Kategori Unit Kerja belum dipilih', mterror, [mbok], 0);
    EKategoriOPD.SetFocus;
  end
  else
  begin
    try
      QueryOPD.Edit;
      QueryOPD['Kode'] := Format('%.*d', [4, strtoint(EKodeOPD.Text)]);
      QueryOPD['Nama_Dinas'] := EnamaOPD.Text;
      QueryOPD['Kategori'] := EKategoriOPD.Text;
      QueryOPD.Refresh;
      combosetting;
    except
      QueryOPD.Cancel;
      showmessage('Gagal Mengubah Unit Kerja');
      QueryOPD.Refresh;
    end;
  end;

end;

procedure TMain.sButton18Click(Sender: TObject);
begin
  if sButton18.Caption = '&Tambah' then
  begin
    EKodeOPD.Text := '';
    EnamaOPD.Text := '';
    EKategoriOPD.ItemIndex := -1;
    sButton18.Caption := '&Simpan';
    sButton17.Enabled := false;
  end
  else
  begin
    if (EKodeOPD.Text = '') then
    begin
      messagedlg('Kode Unit Kerja kosong', mterror, [mbok], 0);
      EKategoriOPD.SetFocus;
    end
    else if (EnamaOPD.Text = '') then
    begin
      messagedlg('Isian Nama Unit Kerja kosong', mterror, [mbok], 0);
      EnamaOPD.SetFocus;
    end
    else if (EKategoriOPD.Text = '') then
    begin
      messagedlg('Kategori Unit Kerja  belum dipilih', mterror, [mbok], 0);
      EKategoriOPD.SetFocus;
    end
    else
    begin
      isAppendOPD := true;
      try
        QueryOPD.Append;
        QueryOPD['Kode'] := Format('%.*d', [4, strtoint(EKodeOPD.Text)]);
        QueryOPD['Nama_Dinas'] := EnamaOPD.Text;
        QueryOPD['Kategori'] := EKategoriOPD.Text;
        isAppendOPD := false;
        sButton18.Caption := '&Tambah';
        sButton17.Enabled := true;
        QueryOPD.Refresh;
        combosetting;
      except
        QueryOPD.Cancel;
        showmessage('Gagal Menambah Unit Kerja Baru');
        isAppendOPD := false;
        QueryOPD.Refresh;
      end;
    end;
  end;
end;

procedure TMain.sButton19Click(Sender: TObject);
var
  btn: Integer;
begin
  btn := messagedlg('Yakin Ingin Menghapus?', mtConfirmation, mbokcancel, 0);
  if btn = mrOK then
  begin
    Try
      QueryOPD.Delete;
      QueryOPD.Refresh;
      combosetting;
    Except
      messagedlg('Error', mterror, [mbok], 0);
      QueryOPD.Refresh;
    End;
  end;
end;

procedure TMain.sButton1Click(Sender: TObject);
var
  dummy, dummytanggal: string;
begin
  dummy := formatdatetime('dd/mm/yyyy', Etanggal.Date);
  dummytanggal := copy(dummy, 7, 4) + copy(dummy, 4, 2) + copy(dummy, 1, 2);
  if ComboOPD.ItemIndex = -1 then
  begin
    messagedlg('Silahkan Pilih Unit Kerja Terlebih Dahulu', mterror, [mbok], 0);
    ComboOPD.SetFocus;
  end
  else if Eid.Text = '' then
  begin
    messagedlg('Nomor Urut Sampel Kosong', mterror, [mbok], 0);
    Eid.SetFocus;
  end
  else if strtoint(dummytanggal) < 20170000 then
  begin
    messagedlg('Isian Tanggal Kosong atau Salah', mterror, [mbok], 0);
    Etanggal.SetFocus;
  end
  else if EJam.ItemIndex = -1 then
  begin
    messagedlg('Isian Jam Kosong', mterror, [mbok], 0);
    EJam.SetFocus;
  end
  else if EJK.ItemIndex = -1 then
  begin
    messagedlg('Isian Jenis Kelamin Kosong', mterror, [mbok], 0);
    EJK.SetFocus;
  end
  else if EUmur.Text = '' then
  begin
    messagedlg('Isian Umur Kosong', mterror, [mbok], 0);
    EUmur.SetFocus;
  end
  else if EPendidikan.ItemIndex = -1 then
  begin
    messagedlg('Isian Pendidikan Kosong', mterror, [mbok], 0);
    EPendidikan.SetFocus;
  end
  else if EPekerjaan.ItemIndex = -1 then
  begin
    messagedlg('Isian Pekerjaan Kosong', mterror, [mbok], 0);
    EPekerjaan.SetFocus;
  end
  else if (EPekerjaan.ItemIndex = 6) and (Elainnya.Text = '') then
  begin
    messagedlg('Isian Lainnya Kosong', mterror, [mbok], 0);
    Elainnya.SetFocus;
  end
  else if (EPekerjaan.ItemIndex < 6) and (Elainnya.Text <> '') then
  begin
    messagedlg('Isian Lainnya Terisi padahal pilihan pekerjaan bukan lainnya',
      mterror, [mbok], 0);
    Elainnya.SetFocus;
  end
  else if Elayanan.Text = '' then
  begin
    messagedlg('Isian Layanan Kosong', mterror, [mbok], 0);
    Elayanan.SetFocus;
  end
  else if EU1.Text = '' then
  begin
    messagedlg('Isian U1 Kosong', mterror, [mbok], 0);
    EU1.SetFocus;
  end
  else if EU2.Text = '' then
  begin
    messagedlg('Isian U2 Kosong', mterror, [mbok], 0);
    EU2.SetFocus;
  end
  else if EU3.Text = '' then
  begin
    messagedlg('Isian U3 Kosong', mterror, [mbok], 0);
    EU3.SetFocus;
  end
  else if EU4.Text = '' then
  begin
    messagedlg('Isian U4 Kosong', mterror, [mbok], 0);
    EU4.SetFocus;
  end
  else if EU5.Text = '' then
  begin
    messagedlg('Isian U5 Kosong', mterror, [mbok], 0);
    EU5.SetFocus;
  end
  else if EU6.Text = '' then
  begin
    messagedlg('Isian U6 Kosong', mterror, [mbok], 0);
    EU6.SetFocus;
  end
  else if EU7.Text = '' then
  begin
    messagedlg('Isian U7 Kosong', mterror, [mbok], 0);
    EU7.SetFocus;
  end
  else if EU8.Text = '' then
  begin
    messagedlg('Isian U8 Kosong', mterror, [mbok], 0);
    EU8.SetFocus;
  end
  else if EU9.Text = '' then
  begin
    messagedlg('Isian U9 Kosong', mterror, [mbok], 0);
    EU9.SetFocus;
  end
  else
  begin
    Query.SQL.Text := 'SELECT * FROM sampel ORDER BY Kode ASC';
    Query.Open;
    try
      Query.Append;
      Query['Kode'] := copy(dummytanggal, 1, 4) + copy(ComboOPD.Text, 1, 4) +
        Format('%.*d', [6, strtoint(Eid.Text)]);
      Query['Dinas'] := copy(ComboOPD.Text, 1, 4);
      Query['Tanggal'] := dummytanggal;
      Query['Jam'] := inttostr(EJam.ItemIndex + 1);
      Query['JK'] := inttostr(EJK.ItemIndex + 1);
      Query['Umur'] := EUmur.Text;
      Query['Pendidikan'] := inttostr(EPendidikan.ItemIndex + 1);
      Query['Pekerjaan'] := inttostr(EPekerjaan.ItemIndex + 1);
      Query['Lainnya'] := Elainnya.Text;
      Query['Layanan'] := Elayanan.Text;
      Query['U1'] := EU1.Text;
      Query['U2'] := EU2.Text;
      Query['U3'] := EU3.Text;
      Query['U4'] := EU4.Text;
      Query['U5'] := EU5.Text;
      Query['U6'] := EU6.Text;
      Query['U7'] := EU7.Text;
      Query['U8'] := EU8.Text;
      Query['U9'] := EU9.Text;
      Query['Saran'] := sMemo1.Text;
      Query.Refresh;
      sButton2.OnClick(Sender);
    except
      Query.Cancel;
      showmessage('Gagal Menambah Sampel Baru,Nomor Urut Sampel Ada yang Sama');
      Query.Refresh;
      Etanggal.SetFocus;
    end;
    Query.Close;
  end;

end;

procedure TMain.sButton20Click(Sender: TObject);
var
  sdir, sqluser, sqldinas: string;
  Q: TMyQuery;
  j: Integer;
begin
  if QueryOPD.RecordCount > 0 then
  begin
    if selectdirectory('Pilih Folder untuk Menyimpan', '', sdir) then
    begin
      Q := TMyQuery.Create(NIL);
      animasi.Animate := true;
      Statusbar.Panels.Items[1].Text := 'Loading.... Please Wait....';
      try
        Q.Connection := Koneksi;
        Q.SQL.Text := 'SELECT * FROM DINAS ORDER BY KODE ASC';
        Q.Open;
        Q.First;
        j := 1;
        while not Q.Eof do
        begin
          Statusbar.Panels.Items[1].Text := 'Loading ' + inttostr(j) + ' of ' +
            inttostr(Q.RecordCount);
          sqluser :=
            ' (''ADMIN'',''081200000000'',''ADMIN'',''ADMIN'',''OPD'',''' +
            Q.FieldByName('Kode').AsString + ''');';
          sqldinas := ' (''' + Q.FieldByName('Kode').AsString + ''',''' +
            Q.FieldByName('Nama_Dinas').AsString + ''',''' +
            Q.FieldByName('Kategori').AsString + ''');';
          GenerateDBase(excludetrailingpathdelimiter(sdir) + '\' +
            Q.FieldByName('Nama_Dinas').AsString + '.pskm', sqluser, sqldinas);
          Q.Next;
        end;
      finally
        Q.Free;
      end;
      animasi.Animate := false;
      Statusbar.Panels.Items[1].Text := '';
      if messagedlg('Buka Folder?', mtConfirmation, mbyesno, 0) = mryes then
        ShellExecute(Application.Handle, 'open', 'explorer.exe', PChar(sdir),
          nil, SW_NORMAL);
    end;
  end;
end;

procedure TMain.sButton21Click(Sender: TObject);
var
  i, j: Integer;
  judul, batasatas, batasbawah, unitdinas: string;
begin
  if (sComboBox3.Text <> '') and (sComboBox7.Text <> '') and
    (sComboBox8.Text <> '') and (sComboBox10.Text <> '') then
  begin
    batasatas := sComboBox3.Text + Format('%.*d',
      [2, (12 div sComboBox10.Items.Count) * (sComboBox10.ItemIndex +
      1)]) + '32';
    batasbawah := sComboBox3.Text + Format('%.*d',
      [2, ((12 div sComboBox10.Items.Count) * (sComboBox10.ItemIndex)) +
      1]) + '00';
    if akses = 'OPD' then
    begin
      sComboBox8.OnEnter(Sender);
      sComboBox8.ItemIndex := 1;
    end;
    if sComboBox8.ItemIndex > 0 then
    begin // per dinas
      Query.SQL.Text :=
        'SELECT sampel.kode as id_sampel,u1 as x1,u2 as x2,u3 as x3,u4 as x4,u5 as x5,u6 as x6,u7 as x7,u8 as x8,u9 as x9, COUNT(*) AS jlh  FROM sampel INNER JOIN dinas ON sampel.Dinas=Dinas.Kode WHERE dinas.kode='
        + copy(sComboBox8.Text, 1, 4) + ' and tanggal<' + batasatas +
        ' and tanggal >' + batasbawah +
        ' group by sampel.kode order by sampel.kode asc';
      judul := 'Id Sampel';
      unitdinas := copy(sComboBox8.Text, 6, length(sComboBox8.Text) - 5);
    end
    else if sComboBox7.ItemIndex > 0 then
    begin // per kategori
      Query.SQL.Text :=
        'SELECT dinas.nama_dinas AS id_sampel,SUM(u1) AS x1,SUM(u2) AS x2 ,SUM(u3) AS x3,SUM(u4) AS x4,SUM(u5) AS x5,SUM(u6) AS x6,SUM(u7)'
        + ' AS x7,SUM(u8) AS x8,SUM(u9) AS x9, COUNT(*) AS jlh FROM sampel  INNER JOIN dinas ON dinas.kode=sampel.dinas WHERE dinas.Kategori="'
        + sComboBox7.Text + '" and tanggal<' + batasatas + ' and tanggal >' +
        batasbawah + ' GROUP BY dinas.kode ORDER BY dinas.kode ASC';
      judul := 'Unit Kerja';
      unitdinas := sComboBox7.Text;
    end
    else
    begin
      Query.SQL.Text :=
        'SELECT dinas.nama_dinas AS id_sampel,SUM(u1) AS x1,SUM(u2) AS x2 ,SUM(u3) AS x3,SUM(u4) AS x4,SUM(u5) AS x5,SUM(u6) AS x6,SUM(u7)'
        + ' AS x7,SUM(u8) AS x8,SUM(u9) AS x9, COUNT(*) AS jlh FROM sampel  INNER JOIN dinas ON dinas.kode=sampel.dinas  Where tanggal<'
        + batasatas + ' and tanggal >' + batasbawah +
        ' GROUP BY dinas.kode ORDER BY dinas.kode ASC';
      judul := 'Unit Kerja';
      unitdinas := 'Seluruh Unit Layanan';
    end;
    with GridDinas do
    begin
      try
        Visible := false;
        Query.Open;
        if not Query.IsEmpty then
        begin
          Query.First;
          RowCount := 4;
          Cells[0, 0] := 'Tabel:';
          Alignments[0, 0] := tALeftJustify;
          FontStyles[0, 0] := [fsbold];
          Autosizecol(0, 5);

          Cells[0, 1] := 'Unit:';
          Alignments[0, 1] := tALeftJustify;
          FontStyles[0, 1] := [fsbold];

          MergeCells(1, 0, 14, 1);
          Cells[1, 0] := 'Kinerja Pelayanan Periode ' + sComboBox10.Text + ' ' +
            sComboBox3.Text;
          Alignments[1, 0] := tALeftJustify;
          FontStyles[1, 0] := [fsbold];

          MergeCells(1, 1, 14, 1);
          Cells[1, 1] := unitdinas;
          Alignments[1, 1] := tALeftJustify;
          FontStyles[1, 1] := [fsbold];

          // header begin
          MergeCells(0, 2, 1, 2);
          Colors[0, 2] := clTeal;
          Cells[0, 2] := 'No';
          FontColors[0, 2] := clwindow;
          Alignments[0, 2] := tACenter;

          MergeCells(1, 2, 1, 2);
          Colors[1, 2] := clTeal;
          Cells[1, 2] := judul;
          Alignments[1, 2] := tACenter;
          FontColors[1, 2] := clwindow;

          MergeCells(3, 2, 9, 1);
          Colors[3, 2] := clTeal;
          Alignments[3, 2] := tACenter;
          Cells[3, 2] := 'Unsur Penilaian';
          FontColors[3, 2] := clwindow;

          MergeCells(2, 2, 1, 2);
          Colors[2, 2] := clTeal;
          Cells[2, 2] := 'Sampel';
          FontColors[2, 2] := clwindow;
          Alignments[2, 2] := tACenter;
          Autosizecol(2, 5);

          Colors[3, 3] := clTeal;
          Alignments[3, 3] := tACenter;
          Cells[3, 3] := 'U1';
          FontColors[3, 3] := clwindow;

          Colors[4, 3] := clTeal;
          Alignments[4, 3] := tACenter;
          Cells[4, 3] := 'U2';
          FontColors[4, 3] := clwindow;

          Colors[5, 3] := clTeal;
          Alignments[5, 3] := tACenter;
          Cells[5, 3] := 'U3';
          FontColors[5, 3] := clwindow;

          Colors[6, 3] := clTeal;
          Alignments[6, 3] := tACenter;
          Cells[6, 3] := 'U4';
          FontColors[6, 3] := clwindow;

          Colors[7, 3] := clTeal;
          Alignments[7, 3] := tACenter;
          Cells[7, 3] := 'U5';
          FontColors[7, 3] := clwindow;

          Colors[8, 3] := clTeal;
          Alignments[8, 3] := tACenter;
          Cells[8, 3] := 'U6';
          FontColors[8, 3] := clwindow;

          Colors[9, 3] := clTeal;
          Alignments[9, 3] := tACenter;
          Cells[9, 3] := 'U7';
          FontColors[9, 3] := clwindow;

          Colors[10, 3] := clTeal;
          Alignments[10, 3] := tACenter;
          Cells[10, 3] := 'U8';
          FontColors[10, 3] := clwindow;

          Colors[11, 3] := clTeal;
          Alignments[11, 3] := tACenter;
          Cells[11, 3] := 'U9';
          FontColors[11, 3] := clwindow;

          MergeCells(12, 2, 1, 2);
          Colors[12, 2] := clTeal;
          Cells[12, 2] := 'Jumlah';
          FontColors[12, 2] := clwindow;
          Alignments[12, 2] := tACenter;

          MergeCells(13, 2, 1, 2);
          Colors[13, 2] := clTeal;
          Cells[13, 2] := 'NRRT';
          FontColors[13, 2] := clwindow;
          Alignments[13, 2] := tACenter;

          MergeCells(14, 2, 1, 2);
          Colors[14, 2] := clTeal;
          Cells[14, 2] := 'IKM';
          FontColors[14, 2] := clwindow;
          Alignments[14, 2] := tACenter;
          Visible := true; // header end
          i := 4;
          while NOT Query.Eof do
          begin
            InsertRows(i, 1);
            Cells[0, i] := inttostr(i - 3);
            Autosizecol(0, 5);
            Cells[1, i] := Query.FieldByName('id_sampel').AsString;
            Autosizecol(1, 5);
            Alignments[1, i] := tALeftJustify;
            Cells[2, i] := Query.FieldByName('jlh').AsString;
            Cells[3, i] := Query.FieldByName('x1').AsString;
            Cells[4, i] := Query.FieldByName('x2').AsString;
            Cells[5, i] := Query.FieldByName('x3').AsString;
            Cells[6, i] := Query.FieldByName('x4').AsString;
            Cells[7, i] := Query.FieldByName('x5').AsString;
            Cells[8, i] := Query.FieldByName('x6').AsString;
            Cells[9, i] := Query.FieldByName('x7').AsString;
            Cells[10, i] := Query.FieldByName('x8').AsString;
            Cells[11, i] := Query.FieldByName('x9').AsString;
            Cells[12, i] := floattostr(rowsum(i, 3, 11));
            Cells[13, i] := formatfloat('0.00', 1 / 9 * strtoint(Cells[12, i]) /
              strtoint(Cells[2, i]));
            Cells[14, i] := formatfloat('0.00',
              25 * 1 / 9 * strtoint(Cells[12, i]) / strtoint(Cells[2, i]));
            Query.Next;
            inc(i);
          end;
          InsertRows(i, 1);
          MergeCells(0, i, 2, 1);
          Cells[0, i] := 'Jumlah';
          Colors[0, i] := clTeal;
          FontColors[0, i] := clwindow;
          for j := 2 to 14 do
          begin
            if j < 13 then
              Cells[j, i] := floattostr(Columnsum(j, 4, i - 1));
            if j = 13 then
              Cells[j, i] := formatfloat('0.00', Columnsum(j, 4, i - 1));
            if j <> 2 then
              Autosizecol(j, 5);
            Colors[j, i] := clTeal;
            Alignments[j, i] := tARightJustify;
            FontColors[j, i] := clwindow;
          end;
          InsertRows(i + 1, 1); // footer 2 begin
          MergeCells(0, i + 1, 3, 1);
          Cells[0, i + 1] := 'NRR';
          Colors[0, i + 1] := clTeal;
          FontColors[0, i + 1] := clwindow;
          for j := 2 to 14 do
          begin
            if (j < 13) and (j <> 2) then
              Cells[j, i + 1] := formatfloat('0.00', strtofloat(Cells[j, i]) /
                strtofloat(Cells[2, i]));
            if j <> 2 then
              Autosizecol(j, 5);
            Colors[j, i + 1] := clTeal;
            Alignments[j, i + 1] := tARightJustify;
            FontColors[j, i + 1] := clwindow;
          end;
          Cells[13, i + 1] := Cells[12, i + 1];
          InsertRows(i + 2, 1); // footer 3 begin
          MergeCells(0, i + 2, 3, 1);
          Cells[0, i + 2] := 'NRRT';
          Colors[0, i + 2] := clTeal;
          FontColors[0, i + 2] := clwindow;
          for j := 2 to 14 do
          begin
            if (j < 13) and (j <> 2) then
              Cells[j, i + 2] := formatfloat('0.00',
                1 / 9 * strtofloat(Cells[j, i]) / strtofloat(Cells[2, i]));
            if j <> 2 then
              Autosizecol(j, 5);
            Colors[j, i + 2] := clTeal;
            Alignments[j, i + 2] := tARightJustify;
            FontColors[j, i + 2] := clwindow;
          end;
          MergeCells(14, i, 1, 3);
          Cells[13, i + 2] := Cells[12, i + 2];
          InsertRows(i + 3, 1); // footer 4 begin
          MergeCells(0, i + 3, 3, 1);
          Cells[0, i + 3] := 'IKM';
          Colors[0, i + 3] := clTeal;
          FontColors[0, i + 3] := clwindow;
          FontStyles[0, i + 3] := [fsbold];
          FontStyles[3, i + 3] := [fsbold];
          Alignments[3, i + 3] := tACenter;
          FontStyles[14, i + 3] := [fsbold];
          MergeCells(3, i + 3, 11, 1);
          Cells[14, i + 3] := formatfloat('0.00',
            25 * 1 / 9 * strtofloat(Cells[12, i]) / strtofloat(Cells[2, i]));
          Alignments[14, i + 3] := tARightJustify;
          if strtofloat(Cells[14, i + 3]) >= 88.31 then
          begin
            Cells[3, i + 3] := 'SANGAT BAIK';
            Colors[3, i + 3] := claqua;
            Colors[14, i + 3] := claqua;
          end
          else if strtofloat(Cells[14, i + 3]) >= 76.61 then
          begin
            Cells[3, i + 3] := 'BAIK';
            Colors[3, i + 3] := cllime;
            Colors[14, i + 3] := cllime;
          end
          else if strtofloat(Cells[14, i + 3]) >= 65.00 then
          begin
            Cells[3, i + 3] := 'KURANG BAIK';
            Colors[3, i + 3] := clyellow;
            Colors[14, i + 3] := clyellow;
          end
          else
          begin
            Cells[3, i + 3] := 'TIDAK BAIK';
            Colors[3, i + 3] := clred;
            Colors[14, i + 3] := clred;
          end; // footer end
        end;
      except
        Query.Close;
      end;
    end;
  end
  else
    messagedlg('Silakan Lengkapi pilihan filter terlebih dahulu', mterror,
      [mbok], 0);
end;

procedure TMain.sButton22Click(Sender: TObject);
begin
  if sButton22.Caption = '&Tambah' then
  begin
    sEdit14.Text := '';
    sEdit15.Text := '';
    sEdit16.Text := '';
    sEdit17.Text := '';
    if akses = 'PUSLAH' then
    begin
      sComboBox5.ItemIndex := -1;
      sComboBox6.ItemIndex := -1;
    end;
    sButton22.Caption := '&Simpan';
    sButton23.Enabled := false;
  end
  else
  begin
    if (sEdit14.Text = '') then
    begin
      messagedlg('Nama User kosong', mterror, [mbok], 0);
      sEdit14.SetFocus;
    end
    else if (sEdit15.Text = '') then
    begin
      messagedlg('Username kosong', mterror, [mbok], 0);
      sEdit15.SetFocus;
    end
    else if (sEdit16.Text = '') then
    begin
      messagedlg('Isian Password kosong', mterror, [mbok], 0);
      sEdit16.SetFocus;
    end
    else if (sComboBox5.Text = '') then
    begin
      messagedlg('Level User  belum dipilih', mterror, [mbok], 0);
      sComboBox5.SetFocus;
    end
    else if (sComboBox6.Text = '') then
    begin
      messagedlg('Asal Unit Kerja belum dipilih', mterror, [mbok], 0);
      sComboBox6.SetFocus;
    end
    else
    begin
      isappendUser := true;
      try
        Quser.Append;
        Quser['Nama'] := sEdit14.Text;
        Quser['Phone'] := sEdit17.Text;
        Quser['Username'] := sEdit15.Text;
        Quser['Password'] := sEdit16.Text;
        if akses = 'PUSLAH' then
          Quser['Level'] := sComboBox5.Text
        else
          Quser['Level'] := 'OPD';
        Quser['Dinas'] := copy(sComboBox6.Text, 1, 4);
        isappendUser := false;
        sButton22.Caption := '&Tambah';
        sButton23.Enabled := true;
        Quser.Refresh;
      except
        Quser.Cancel;
        showmessage('Gagal Menambah User Baru');
        isappendUser := false;
        Quser.Refresh;
      end;
    end;
  end;
end;

procedure TMain.sButton23Click(Sender: TObject);
begin
  if Quser.FieldByName('Username').AsString <> 'ADMIN' then
  begin
    if (sEdit14.Text = '') then
    begin
      messagedlg('Nama User kosong', mterror, [mbok], 0);
      sEdit14.SetFocus;
    end
    else if (sEdit15.Text = '') then
    begin
      messagedlg('Username kosong', mterror, [mbok], 0);
      sEdit15.SetFocus;
    end
    else if (sEdit16.Text = '') then
    begin
      messagedlg('Isian Password kosong', mterror, [mbok], 0);
      sEdit16.SetFocus;
    end
    else if (sComboBox5.Text = '') then
    begin
      messagedlg('Level User  belum dipilih', mterror, [mbok], 0);
      sComboBox5.SetFocus;
    end
    else if (sComboBox6.Text = '') then
    begin
      messagedlg('Asal Unit Kerja  belum dipilih', mterror, [mbok], 0);
      sComboBox6.SetFocus;
    end
    else
    begin
      try
        Quser.Edit;
        Quser['Nama'] := sEdit14.Text;
        Quser['Username'] := sEdit15.Text;
        Quser['Phone'] := sEdit17.Text;
        Quser['Password'] := sEdit16.Text;
        Quser['Level'] := sComboBox5.Text;
        Quser['Dinas'] := copy(sComboBox6.Text, 1, 4);
        Quser.Refresh;
      except
        Quser.Cancel;
        showmessage('Gagal Mengubah User');
        Quser.Refresh;
      end;
    end;
  end
  else
    messagedlg('Akun Default Tidak Dapat Diedit', mterror, [mbok], 0);
end;

procedure TMain.sButton24Click(Sender: TObject);
var
  btn: Integer;
begin
  if Quser.FieldByName('Username').AsString <> 'ADMIN' then
  begin
    btn := messagedlg('Yakin Ingin Menghapus?', mtConfirmation, mbokcancel, 0);
    if btn = mrOK then
    begin
      Try
        Quser.Delete;
        Quser.Refresh;
      Except
        messagedlg('Error', mterror, [mbok], 0);
        Quser.Refresh;
      End;
    end;
  end
  else
    messagedlg('Akun Default Tidak Dapat Dihapus', mterror, [mbok], 0);
end;

procedure TMain.sButton25Click(Sender: TObject);
var
  sdir: string;
begin
  if GridBanding.Visible = true then
  begin
    ADVExcel.AdvStringGrid := GridBanding;
    if selectdirectory('Pilih Folder untuk Menyimpan', '', sdir) then
    begin
      try
        animasi.Animate := true;
        Statusbar.Panels.Items[1].Text := 'Loading.... Please Wait....';
        ADVExcel.XLSExport(sdir + '\Banding ' + GridBanding.Cells[1, 1]
          + '.xls');;
        if messagedlg('Buka Folder?', mtConfirmation, mbyesno, 0) = mryes then
          ShellExecute(Application.Handle, 'open', 'explorer.exe', PChar(sdir),
            nil, SW_NORMAL);
      finally
        animasi.Animate := false;
        Statusbar.Panels.Items[1].Text := '';
      end;
    end;
  end;
end;

procedure TMain.sButton26Click(Sender: TObject);
var
  i, u: Integer;
begin
  if GridBanding.Visible = true then
  begin
    with grafik do
    begin
      Chart1.RemoveAllSeries;
      Chart1.AddSeries(TBarSeries.Create(self));
      Chart1[0].Clear;
      Chart1.Title.Text.Text := 'Nilai Rata Rata ' + sComboBox22.Text + ' pada '
        + GridBanding.Cells[1, 1];
      Chart1.Title.Font.Size := 16;
      Chart1.series[0].Clear;
      If GridBanding.Cells[1, GridBanding.RowCount - 1] = ': Di Bawah Rata-Rata'
      then
        u := 7
      else
        u := 2;
      for i := 4 to GridBanding.RowCount - u do
        Chart1.series[0]
          .Add(strtofloat(GridBanding.Cells[sComboBox22.ItemIndex + 2, i]),
          GridBanding.Cells[1, i]);
      Chart1.series[0].Marks.style := smsValue;
      Chart1.series[0].ColorEachPoint := true;
      charteditor1.series := Chart1.series[0];
      showmodal;
    end;
  end;
end;

procedure TMain.sButton27Click(Sender: TObject);
var
  i, j, k, c, r: Integer;
  dummy: TIKM;
begin
  if (sComboBox17.Text <> '') and (sComboBox21.Text <> '') then
  begin
    with GridBanding do
    begin
      Visible := true;
      RowCount := 4;
      Cells[0, 0] := 'Tabel:';
      Alignments[0, 0] := tALeftJustify;
      FontStyles[0, 0] := [fsbold];
      Autosizecol(0, 5);

      Cells[0, 1] := 'Unit:';
      Alignments[0, 1] := tALeftJustify;
      FontStyles[0, 1] := [fsbold];

      MergeCells(1, 0, 11, 1);
      Cells[1, 0] := 'Perbandingan NRR Unsur Periode ' + sComboBox20.Text + ' '
        + sComboBox17.Text;
      Alignments[1, 0] := tALeftJustify;
      FontStyles[1, 0] := [fsbold];

      MergeCells(1, 1, 11, 1);
      Alignments[1, 1] := tALeftJustify;
      FontStyles[1, 1] := [fsbold];

      // header begin
      MergeCells(0, 2, 1, 2);
      Colors[0, 2] := clTeal;
      Cells[0, 2] := 'No';
      FontColors[0, 2] := clwindow;
      Alignments[0, 2] := tACenter;

      MergeCells(1, 2, 1, 2);
      Colors[1, 2] := clTeal;
      Alignments[1, 2] := tACenter;
      FontColors[1, 2] := clwindow;

      MergeCells(2, 2, 9, 1);
      Colors[2, 2] := clTeal;
      Alignments[2, 2] := tACenter;
      Cells[2, 2] := 'NRR Unsur';
      FontColors[2, 2] := clwindow;

      Colors[2, 3] := clTeal;
      Cells[2, 3] := 'U1';
      FontColors[2, 3] := clwindow;
      Alignments[2, 3] := tACenter;

      Colors[3, 3] := clTeal;
      Alignments[3, 3] := tACenter;
      Cells[3, 3] := 'U2';
      FontColors[3, 3] := clwindow;

      Colors[4, 3] := clTeal;
      Alignments[4, 3] := tACenter;
      Cells[4, 3] := 'U3';
      FontColors[4, 3] := clwindow;

      Colors[5, 3] := clTeal;
      Alignments[5, 3] := tACenter;
      Cells[5, 3] := 'U4';
      FontColors[5, 3] := clwindow;

      Colors[6, 3] := clTeal;
      Alignments[6, 3] := tACenter;
      Cells[6, 3] := 'U5';
      FontColors[6, 3] := clwindow;

      Colors[7, 3] := clTeal;
      Alignments[7, 3] := tACenter;
      Cells[7, 3] := 'U6';
      FontColors[7, 3] := clwindow;

      Colors[8, 3] := clTeal;
      Alignments[8, 3] := tACenter;
      Cells[8, 3] := 'U7';
      FontColors[8, 3] := clwindow;

      Colors[9, 3] := clTeal;
      Alignments[9, 3] := tACenter;
      Cells[9, 3] := 'U8';
      FontColors[9, 3] := clwindow;

      Colors[10, 3] := clTeal;
      Alignments[10, 3] := tACenter;
      Cells[10, 3] := 'U9';
      FontColors[10, 3] := clwindow;

      MergeCells(11, 2, 1, 2);
      Colors[11, 2] := clTeal;
      Alignments[11, 2] := tACenter;
      Cells[11, 2] := 'IKM';
      FontColors[11, 2] := clwindow;
      if sComboBox18.ItemIndex = 0 then
      begin // semua dinas
        Cells[1, 1] := 'Semua Unit Layanan';
        Cells[1, 2] := 'Unit Kerja';
        Query.SQL.Text := 'SELECT Kode from Dinas Order By Kode Asc';
        try
          Query.Open;
          Query.First;
          i := 4;
          while not Query.Eof do
          begin
            dummy := getIKM(Query.FieldByName('Kode').AsString, sComboBox17,
              sComboBox20,0);
            if dummy[1] <> '' then
            begin
              InsertRows(i, 1);
              Cells[0, i] := inttostr(i - 3);
              Autosizecol(0, 5);
              for j := 1 to 11 do
              begin
                if j = 1 then
                  Alignments[j, i] := tALeftJustify;
                Cells[j, i] := dummy[j];
                Autosizecol(j, 5);
              end;
              inc(i);
            end;
            Query.Next;
          end;
          if RowCount > 4 then
          begin
            InsertRows(i, 1);
            MergeCells(0, i, 2, 1);
            Cells[0, i] := 'Komposit';
            Colors[0, i] := clTeal;
            FontColors[0, i] := clwindow;
            for j := 2 to 11 do
            begin
              dummy := getIKM('All', sComboBox17, sComboBox20,0);
              Autosizecol(j, 5);
              Cells[j, i] := dummy[j];
              Colors[j, i] := clTeal;
              Alignments[j, i] := tARightJustify;
              FontColors[j, i] := clwindow;
            end;
          end
          else
            Visible := false;
        finally
          Query.Close;
        end;
      end; // semua dinas end
      if sComboBox18.ItemIndex = 1 then
      begin // per dinas dlm kategori
        Cells[1, 1] := 'Semua Unit Layanan Kategori ' + sComboBox19.Text;
        Cells[1, 2] := 'Unit Kerja';
        Query.SQL.Text := 'SELECT Kode from Dinas WHERE Kategori="' +
          sComboBox19.Text + '" ORDER By Kode Asc';
        try
          Query.Open;
          Query.First;
          i := 4;
          while not Query.Eof do
          begin
            dummy := getIKM(Query.FieldByName('Kode').AsString, sComboBox17,
              sComboBox20,0);
            if dummy[1] <> '' then
            begin
              InsertRows(i, 1);
              Cells[0, i] := inttostr(i - 3);
              Autosizecol(0, 5);
              for j := 1 to 11 do
              begin
                if j = 1 then
                  Alignments[j, i] := tALeftJustify;
                Cells[j, i] := dummy[j];
                Autosizecol(j, 5);
              end;
              inc(i);
            end;
            Query.Next;
          end;
          if RowCount > 4 then
          begin
            InsertRows(i, 1);
            MergeCells(0, i, 2, 1);
            Cells[0, i] := 'Komposit';
            Colors[0, i] := clTeal;
            FontColors[0, i] := clwindow;
            for j := 2 to 11 do
            begin
              dummy := getIKM(sComboBox19.Text, sComboBox17, sComboBox20,0);
              Autosizecol(j, 5);
              Cells[j, i] := dummy[j];
              Colors[j, i] := clTeal;
              Alignments[j, i] := tARightJustify;
              FontColors[j, i] := clwindow;
            end;
          end
          else
            Visible := false;
        finally
          Query.Close;
        end;
      end; // per dinas kategori end
      if sComboBox18.ItemIndex = 2 then
      begin // per kategori
        Cells[1, 1] := 'Unit Layanan Per Kategori ' + sComboBox19.Text;
        Cells[1, 2] := 'Kategori';
        k := 4;
        for i := 4 to 7 do
        begin
          dummy := getIKM(sComboBox19.Items[i - 4], sComboBox17, sComboBox20,0);
          if dummy[1] <> '' then
          begin
            InsertRows(k, 1);
            Cells[0, k] := inttostr(k - 3);
            Autosizecol(0, 5);
            for j := 1 to 11 do
            begin
              if j = 1 then
                Alignments[j, k] := tALeftJustify;
              Cells[j, k] := dummy[j];
              Autosizecol(j, 5);
            end;
            inc(k);
          end;
        end;
        if RowCount > 4 then
        begin
          InsertRows(k, 1);
          MergeCells(0, k, 2, 1);
          Cells[0, k] := 'Komposit';
          Colors[0, k] := clTeal;
          FontColors[0, k] := clwindow;
          for j := 2 to 11 do
          begin
            dummy := getIKM('All', sComboBox17, sComboBox20,0);
            Autosizecol(j, 5);
            Cells[j, k] := dummy[j];
            Colors[j, k] := clTeal;
            Alignments[j, k] := tARightJustify;
            FontColors[j, k] := clwindow;
          end;
        end
        else
          Visible := false;
      end; // per  kategori end
      if RowCount > 6 then // warnai
      begin
        for c := 2 to 11 do
        begin
          for r := 4 to RowCount - 2 do
            if Cells[c, r] >= Cells[c, RowCount - 1] then
            begin
              Colors[c, r] := clgreen;
              if Cells[c, r] = formatfloat('0.00', columnmax(c, 4, RowCount - 2))
              then
              begin
                Colors[c, r] := clblue;

                FontColors[c, r] := clwindow;
              end;
              Alignments[c, r] := tARightJustify;
            end
            else
            begin
              Colors[c, r] := clyellow;
              if Cells[c, r] = formatfloat('0.00', columnmin(c, 4, RowCount - 2))
              then
              begin
                Colors[c, r] := clred;
                FontColors[c, r] := clwindow;
              end;
              Alignments[c, r] := tARightJustify;
            end;
        end;
        InsertRows(RowCount, 5);
        Colors[0, RowCount - 4] := clblue;
        MergeCells(1, RowCount - 4, 11, 1);
        Cells[1, RowCount - 4] := ': Tertinggi';
        Alignments[1, RowCount - 4] := tALeftJustify;
        Colors[0, RowCount - 3] := clred;
        MergeCells(1, RowCount - 3, 11, 1);
        Cells[1, RowCount - 3] := ': Terendah';
        Alignments[1, RowCount - 3] := tALeftJustify;
        Colors[0, RowCount - 2] := clgreen;
        MergeCells(1, RowCount - 2, 11, 1);
        Cells[1, RowCount - 2] := ': Di atas Rata-Rata';
        Alignments[1, RowCount - 2] := tALeftJustify;
        Colors[0, RowCount - 1] := clyellow;
        MergeCells(1, RowCount - 1, 11, 1);
        Cells[1, RowCount - 1] := ': Di Bawah Rata-Rata';
        Alignments[1, RowCount - 1] := tALeftJustify;
      end;
    end;
  end
  else
    messagedlg('Silakan Lengkapi pilihan filter terlebih dahulu', mterror,
      [mbok], 0);
end;

procedure TMain.sButton28Click(Sender: TObject);
begin
  if (sComboBox1.Text <> '') and (sComboBox2.Text <> '') and
    (sComboBox9.Text <> '') then
  begin
    QSampel.SQL.Text := 'Select * from sampel where dinas=' +
      copy(sComboBox1.Text, 1, 4) + ' and tanggal<' + sComboBox2.Text +
      Format('%.*d', [2, sComboBox9.ItemIndex + 1]) + '32 and tanggal >' +
      sComboBox2.Text + Format('%.*d', [2, sComboBox9.ItemIndex + 1]) + '00';
    QSampel.Open;
  end
  else
    messagedlg('Silakan Lengkapi Pilihan', mterror, [mbok], 0);
end;

procedure TMain.sButton2Click(Sender: TObject);
begin
  Etanggal.Text := '';
  EJam.ItemIndex := -1;
  EJK.ItemIndex := -1;
  EUmur.Text := '';
  EPendidikan.ItemIndex := -1;
  EPekerjaan.ItemIndex := -1;
  Elainnya.Text := '';
  Elayanan.Text := '';
  EU1.Text := '';
  EU2.Text := '';
  EU3.Text := '';
  EU4.Text := '';
  EU5.Text := '';
  EU6.Text := '';
  EU7.Text := '';
  EU8.Text := '';
  EU9.Text := '';
  Eid.Text := '';
  sMemo1.Text := '';
  Eid.OnEnter(sender);
  Etanggal.SetFocus;
end;

procedure TMain.sButton31Click(Sender: TObject);
var
  Qsaran: TMyQuery;
  batasatas, batasbawah: string;
begin
  if (sComboBox27.Text <> '') and (sComboBox28.Text <> '') and
    (sComboBox29.Text <> '') and (sComboBox30.Text <> '') then
  begin
    sMemo3.Lines.Clear;
    batasatas := sComboBox27.Text + Format('%.*d',
      [2, (12 div sComboBox29.Items.Count) * (sComboBox29.ItemIndex +
      1)]) + '32';
    batasbawah := sComboBox27.Text + Format('%.*d',
      [2, ((12 div sComboBox29.Items.Count) * (sComboBox29.ItemIndex)) +
      1]) + '00';
    Qsaran := TMyQuery.Create(NIL);
    try
      Qsaran.Connection := Koneksi;
      Qsaran.SQL.Text := 'Select saran from sampel where saran<>"" and dinas=' +
        copy(sComboBox28.Text, 1, 4) + ' and tanggal<' + batasatas +
        '32 and tanggal >' + batasbawah;
      Qsaran.Open;
      Qsaran.First;
      while not Qsaran.Eof do
      begin
        sMemo3.Lines.Add('"' + Qsaran.FieldByName('saran').AsString + '"');
        sMemo3.Lines.Add
          ('----------------------------------------------------------------------------------------------------------------');
        Qsaran.Next
      end;

    finally
      Qsaran.Free;
    end;
  end
  else
    messagedlg('Silakan Lengkapi Pilihan', mterror, [mbok], 0);
end;

procedure TMain.sButton3Click(Sender: TObject);
var
  dummy, dummytanggal: string;
begin
  if (QSampel.RecordCount > 0) then
  begin
    dummy := formatdatetime('dd/mm/yyyy', sDateEdit1.Date);
    dummytanggal := copy(dummy, 7, 4) + copy(dummy, 4, 2) + copy(dummy, 1, 2);
    if Eid.Text = '' then
      if strtoint(dummytanggal) < 20170000 then
      begin
        messagedlg('Isian Tanggal Kosong atau Salah', mterror, [mbok], 0);
        sDateEdit1.SetFocus;
      end
      else if sRadioGroup4.ItemIndex = -1 then
      begin
        messagedlg('Isian Jam Kosong', mterror, [mbok], 0);
        sRadioGroup4.SetFocus;
      end
      else if sRadioGroup1.ItemIndex = -1 then
      begin
        messagedlg('Isian Jenis Kelamin Kosong', mterror, [mbok], 0);
        sRadioGroup4.SetFocus;
      end
      else if sEdit4.Text = '' then
      begin
        messagedlg('Isian Umur Kosong', mterror, [mbok], 0);
        sEdit4.SetFocus;
      end
      else if sRadioGroup3.ItemIndex = -1 then
      begin
        messagedlg('Isian Pendidikan Kosong', mterror, [mbok], 0);
        sRadioGroup3.SetFocus;
      end
      else if sRadioGroup2.ItemIndex = -1 then
      begin
        messagedlg('Isian Pekerjaan Kosong', mterror, [mbok], 0);
        sRadioGroup2.SetFocus;
      end
      else if (sRadioGroup2.ItemIndex = 6) and (sEdit1.Text = '') then
      begin
        messagedlg('Isian Lainnya Kosong', mterror, [mbok], 0);
        sEdit1.SetFocus;
      end
      else if (sRadioGroup2.ItemIndex < 6) and (sEdit1.Text <> '') then
      begin
        messagedlg
          ('Isian Lainnya Terisi padahal pilihan pekerjaan bukan lainnya',
          mterror, [mbok], 0);
        sEdit1.SetFocus;
      end
      else if sEdit2.Text = '' then
      begin
        messagedlg('Isian Layanan Kosong', mterror, [mbok], 0);
        sEdit2.SetFocus;
      end
      else if sEdit3.Text = '' then
      begin
        messagedlg('Isian U1 Kosong', mterror, [mbok], 0);
        sEdit3.SetFocus;
      end
      else if sEdit5.Text = '' then
      begin
        messagedlg('Isian U2 Kosong', mterror, [mbok], 0);
        sEdit5.SetFocus;
      end
      else if sEdit6.Text = '' then
      begin
        messagedlg('Isian U3 Kosong', mterror, [mbok], 0);
        sEdit6.SetFocus;
      end
      else if sEdit7.Text = '' then
      begin
        messagedlg('Isian U4 Kosong', mterror, [mbok], 0);
        sEdit7.SetFocus;
      end
      else if sEdit8.Text = '' then
      begin
        messagedlg('Isian U5 Kosong', mterror, [mbok], 0);
        sEdit8.SetFocus;
      end
      else if sEdit9.Text = '' then
      begin
        messagedlg('Isian U6 Kosong', mterror, [mbok], 0);
        sEdit9.SetFocus;
      end
      else if sEdit10.Text = '' then
      begin
        messagedlg('Isian U7 Kosong', mterror, [mbok], 0);
        sEdit10.SetFocus;
      end
      else if sEdit11.Text = '' then
      begin
        messagedlg('Isian U8 Kosong', mterror, [mbok], 0);
        sEdit11.SetFocus;
      end
      else if sEdit12.Text = '' then
      begin
        messagedlg('Isian U9 Kosong', mterror, [mbok], 0);
        sEdit12.SetFocus;
      end
      else
      begin

        try
          QSampel.Edit;
          QSampel['Tanggal'] := dummytanggal;
          QSampel['Jam'] := inttostr(sRadioGroup4.ItemIndex + 1);
          QSampel['JK'] := inttostr(sRadioGroup1.ItemIndex + 1);
          QSampel['Umur'] := sEdit4.Text;
          QSampel['Pendidikan'] := inttostr(sRadioGroup3.ItemIndex + 1);
          QSampel['Pekerjaan'] := inttostr(sRadioGroup2.ItemIndex + 1);
          QSampel['Lainnya'] := sEdit1.Text;
          QSampel['Layanan'] := sEdit2.Text;
          QSampel['U1'] := sEdit3.Text;
          QSampel['U2'] := sEdit5.Text;
          QSampel['U3'] := sEdit6.Text;
          QSampel['U4'] := sEdit7.Text;
          QSampel['U5'] := sEdit8.Text;
          QSampel['U6'] := sEdit9.Text;
          QSampel['U7'] := sEdit10.Text;
          QSampel['U8'] := sEdit11.Text;
          QSampel['U9'] := sEdit12.Text;
          QSampel['Saran'] := sMemo2.Text;
          QSampel.Refresh;
        except
          QSampel.Cancel;
          showmessage('Gagal Mengubah Sampel');
          QSampel.Refresh;
        end;
      end;
  end;
end;

procedure TMain.sButton4Click(Sender: TObject);
var
  btn: Integer;
begin
  if (QSampel.RecordCount > 0) then
    btn := messagedlg('Yakin Ingin Menghapus Data responden Ini?',
      mtConfirmation, mbokcancel, 0);
  if (btn = mrOK) then
  begin
    Try
      QSampel.Delete;
      QSampel.Refresh;
    Except
      messagedlg('Error', mterror, [mbok], 0);
      QSampel.Refresh;
    End;
  end;
end;

procedure TMain.sButton5Click(Sender: TObject);
var
  sdir: string;
begin
  if GridDinas.Visible = true then
  begin
    ADVExcel.AdvStringGrid := GridDinas;
    if selectdirectory('Pilih Folder untuk Menyimpan', '', sdir) then
    begin
      try
        animasi.Animate := true;
        Statusbar.Panels.Items[1].Text := 'Loading.... Please Wait....';
        ADVExcel.XLSExport(sdir + '\IKM ' + GridDinas.Cells[1, 1] + '.xls');;
        if messagedlg('Buka Folder?', mtConfirmation, mbyesno, 0) = mryes then
          ShellExecute(Application.Handle, 'open', 'explorer.exe', PChar(sdir),
            nil, SW_NORMAL);
      finally
        animasi.Animate := false;
        Statusbar.Panels.Items[1].Text := '';
      end;
    end;
  end;
end;

procedure TMain.sButton6Click(Sender: TObject);
var
  i: Integer;
begin
  if GridDinas.Visible = true then
  begin
    with grafik do
    begin
      Chart1.RemoveAllSeries;
      Chart1.AddSeries(TBarSeries.Create(self));
      Chart1[0].Clear;
      Chart1.Title.Text.Text := 'Nilai Rata Rata Unsur Pelayanan pada ' +
        GridDinas.Cells[1, 1];
      Chart1.Title.Font.Size := 16;
      Chart1.series[0].Clear;
      for i := 3 to 11 do
        Chart1.series[0].Add(strtofloat(GridDinas.Cells[i,
          GridDinas.RowCount - 3]), GridDinas.Cells[i, 3]);
      Chart1.series[0].Marks.style := smsValue;
      Chart1.series[0].ColorEachPoint := true;
      charteditor1.series := Chart1.series[0];
      showmodal;
    end;
  end;
end;

procedure TMain.sButton7Click(Sender: TObject);
var
  sdir: string;
begin
  if GridSampel.Visible = true then
  begin
    ADVExcel.AdvStringGrid := GridSampel;
    if selectdirectory('Pilih Folder untuk Menyimpan', '', sdir) then
    begin
      try
        animasi.Animate := true;
        Statusbar.Panels.Items[1].Text := 'Loading.... Please Wait....';
        ADVExcel.XLSExport(sdir + '\Profil ' + GridSampel.Cells[1, 1] +
          '.xls');;
        if messagedlg('Buka Folder?', mtConfirmation, mbyesno, 0) = mryes then
          ShellExecute(Application.Handle, 'open', 'explorer.exe', PChar(sdir),
            nil, SW_NORMAL);
      finally
        animasi.Animate := false;
        Statusbar.Panels.Items[1].Text := '';
      end;
    end;

  end; // eksekusi juka grid visible
end;

procedure TMain.sButton8Click(Sender: TObject);
var
  i, maks: Integer;
begin
  if GridSampel.Visible = true then
  begin
    with grafik do
    begin
      Chart1.RemoveAllSeries;
      Chart1.AddSeries(TPieSeries.Create(self));
      Chart1[0].Clear;
      Chart1.Title.Text.Text := GridSampel.Cells[1, 0] + ' pada ' +
        GridSampel.Cells[1, 1];
      Chart1.Title.Font.Size := 16;
      Chart1.series[0].Clear;
      if (sComboBox14.ItemIndex = 0) or (sComboBox14.ItemIndex = 4) then
        maks := 3
      else if (sComboBox14.ItemIndex = 2) then
        maks := 8
      else
        maks := 7;
      for i := 2 to maks do
        Chart1.series[0]
          .Add(strtoint(GridSampel.Cells[i, GridSampel.RowCount - 1]),
          GridSampel.Cells[i, 3]);
      Chart1.series[0].Marks.style := smsValue;
      Chart1.series[0].ColorEachPoint := true;
      charteditor1.series := Chart1.series[0];
      showmodal;
    end;
  end;
end;

procedure TMain.sButton9Click(Sender: TObject);
var
  i, j: Integer;
  batasatas, batasbawah, unitdinas: string;
begin
  if (sComboBox4.Text <> '') and (sComboBox11.Text <> '') and
    (sComboBox12.Text <> '') and (sComboBox13.Text <> '') then
  begin // per JK
    batasatas := sComboBox4.Text + Format('%.*d',
      [2, (12 div sComboBox13.Items.Count) * (sComboBox13.ItemIndex +
      1)]) + '32';
    batasbawah := sComboBox4.Text + Format('%.*d',
      [2, ((12 div sComboBox13.Items.Count) * (sComboBox13.ItemIndex)) +
      1]) + '00';
    GridSampel.Visible := false;
    GridSampel.RowCount := 4;
    GridSampel.Colcount := 1;
    if akses = 'OPD' then
    begin
      sComboBox12.OnEnter(Sender);
      sComboBox12.ItemIndex := 1;
    end;
    if sComboBox12.ItemIndex > 0 then
      unitdinas := copy(sComboBox12.Text, 5, length(sComboBox12.Text) - 4)
    else if sComboBox11.ItemIndex > 0 then
      unitdinas := sComboBox11.Text
    else
      unitdinas := 'Seluruh Unit Layanan';
    // jenis kelamin
    if sComboBox14.ItemIndex = 0 then
    begin
      if sComboBox12.ItemIndex > 0 then
      begin // per dinas
        Query.SQL.Text :=
          'select dinas.Nama_Dinas,SUM(IF(JK=1,1,0)) AS Laki,SUM(IF(JK=2,1,0))as Bini, Count(*) as Total from sampel Inner JOIN dinas on dinas.kode=sampel.dinas WHERE dinas.kode='
          + copy(sComboBox12.Text, 1, 4) + ' and tanggal<' + batasatas +
          ' and tanggal >' + batasbawah +
          ' group by dinas.kode order by dinas.kode asc';
      end
      else if sComboBox11.ItemIndex > 0 then
      begin // per kategori
        Query.SQL.Text :=
          'select dinas.Nama_Dinas,SUM(IF(JK=1,1,0)) AS Laki,SUM(IF(JK=2,1,0))as Bini, Count(*) as Total from sampel Inner JOIN dinas on dinas.kode=sampel.dinas WHERE dinas.kategori="'
          + sComboBox11.Text + '" and tanggal<' + batasatas + ' and tanggal >' +
          batasbawah + ' GROUP BY dinas.kode ORDER BY dinas.kode ASC';
      end
      else
      begin
        Query.SQL.Text :=
          'select dinas.Nama_Dinas,SUM(IF(JK=1,1,0)) AS Laki,SUM(IF(JK=2,1,0))as Bini, Count(*) as Total from sampel Inner JOIN dinas on dinas.kode=sampel.dinas WHERE tanggal<'
          + batasatas + ' and tanggal >' + batasbawah +
          ' GROUP BY dinas.kode ORDER BY dinas.kode ASC';
      end;
      With GridSampel do
      begin
        try
          Query.Open;
          if not Query.IsEmpty then
          begin
            Query.First;
            Visible := true;
            Insertcols(0, 4); // header begin
            With GridSampel do
            begin
              Cells[0, 0] := 'Tabel:';
              Alignments[0, 0] := tALeftJustify;
              FontStyles[0, 0] := [fsbold];
              Cells[0, 1] := 'Unit:';
              Alignments[0, 1] := tALeftJustify;
              FontStyles[0, 1] := [fsbold];

              MergeCells(1, 0, 4, 1);
              Cells[1, 0] :=
                'Profil Responden berdasarkan Jenis Kelamin Periode ' +
                sComboBox13.Text + ' ' + sComboBox4.Text;
              Alignments[1, 0] := tALeftJustify;
              FontStyles[1, 0] := [fsbold];
              Autosizecol(1, 5);

              MergeCells(1, 1, 4, 1);
              Cells[1, 1] := unitdinas;
              Alignments[1, 1] := tALeftJustify;
              FontStyles[1, 1] := [fsbold];
            end;
            MergeCells(0, 2, 1, 2);
            Colors[0, 2] := clTeal;
            Cells[0, 2] := 'No.';
            FontColors[0, 2] := clwindow;
            Alignments[0, 2] := tACenter;

            MergeCells(1, 2, 1, 2);
            Colors[1, 2] := clTeal;
            Cells[1, 2] := 'Unit Kerja';
            FontColors[1, 2] := clwindow;
            Alignments[1, 2] := tACenter;

            MergeCells(2, 2, 2, 1);
            Colors[2, 2] := clTeal;
            Cells[2, 2] := 'Jenis Kelamin';
            FontColors[2, 2] := clwindow;
            Alignments[2, 2] := tACenter;

            MergeCells(4, 2, 1, 2);
            Colors[4, 2] := clTeal;
            Cells[4, 2] := '  Total  ';
            FontColors[4, 2] := clwindow;
            Alignments[4, 2] := tACenter;

            Colors[2, 3] := clTeal;
            Cells[2, 3] := 'Laki-Laki';
            FontColors[2, 3] := clwindow;
            Alignments[2, 3] := tACenter;

            Colors[3, 3] := clTeal;
            Cells[3, 3] := 'Perempuan';
            FontColors[3, 3] := clwindow;
            Alignments[3, 3] := tACenter;
            i := 4;
            while NOT Query.Eof do
            begin
              InsertRows(i, 1);
              Cells[0, i] := inttostr(i - 3);
              Alignments[0, i] := tARightJustify;
              Autosizecol(0, 5);
              Cells[1, i] := Query.FieldByName('Nama_Dinas').AsString;
              Autosizecol(1, 5);
              Cells[2, i] := Query.FieldByName('Laki').AsString;
              Alignments[2, i] := tARightJustify;
              Cells[3, i] := Query.FieldByName('Bini').AsString;
              Alignments[3, i] := tARightJustify;
              Cells[4, i] := Query.FieldByName('Total').AsString;
              Alignments[4, i] := tARightJustify;
              Query.Next;
              inc(i);
            end;
            InsertRows(i, 1);
            MergeCells(0, i, 2, 1);
            Cells[0, i] := 'Jumlah';
            Colors[0, i] := clTeal;
            FontColors[0, i] := clwindow;
            for j := 2 to 4 do
            begin
              Cells[j, i] := floattostr(Columnsum(j, 4, i - 1));
              Colors[j, i] := clTeal;
              FontColors[j, i] := clwindow;
              Alignments[j, i] := tARightJustify;
            end;
          end;
        except
          Query.Close;
        end;
      end;
    end;
    // Jenis kelamin end
    // pendidikan
    if sComboBox14.ItemIndex = 1 then
    begin
      if sComboBox12.ItemIndex > 0 then
      begin // per dinas
        Query.SQL.Text :=
          'select dinas.Nama_Dinas,SUM(IF(Pendidikan=1,1,0)) AS sd,SUM(IF(Pendidikan=2,1,0)) AS smp, SUM(IF(Pendidikan=3,1,0)) AS sma, SUM(IF(Pendidikan=4,1,0)) AS s1,'
          + 'SUM(IF(Pendidikan=5,1,0)) AS s2,SUM(IF(Pendidikan=6,1,0)) AS s3, Count(*) as Total from sampel Inner JOIN dinas on dinas.kode=sampel.dinas WHERE dinas.kode='
          + copy(sComboBox12.Text, 1, 4) + ' and tanggal<' + batasatas +
          ' and tanggal >' + batasbawah +
          ' group by dinas.kode order by dinas.kode asc';
      end
      else if sComboBox11.ItemIndex > 0 then
      begin // per kategori
        Query.SQL.Text :=
          'select dinas.Nama_Dinas,SUM(IF(Pendidikan=1,1,0)) AS sd,SUM(IF(Pendidikan=2,1,0)) AS smp, SUM(IF(Pendidikan=3,1,0)) AS sma, SUM(IF(Pendidikan=4,1,0)) AS s1,'
          + 'SUM(IF(Pendidikan=5,1,0)) AS s2,SUM(IF(Pendidikan=6,1,0)) AS s3, Count(*) as Total from sampel Inner JOIN dinas on dinas.kode=sampel.dinas WHERE dinas.kategori="'
          + sComboBox11.Text + '" and tanggal<' + batasatas + ' and tanggal >' +
          batasbawah + ' GROUP BY dinas.kode ORDER BY dinas.kode ASC';
      end
      else
      begin
        Query.SQL.Text :=
          'select dinas.Nama_Dinas,SUM(IF(Pendidikan=1,1,0)) AS sd,SUM(IF(Pendidikan=2,1,0)) AS smp, SUM(IF(Pendidikan=3,1,0)) AS sma, SUM(IF(Pendidikan=4,1,0)) AS s1,'
          + 'SUM(IF(Pendidikan=5,1,0)) AS s2,SUM(IF(Pendidikan=6,1,0)) AS s3, Count(*) as Total from sampel Inner JOIN dinas on dinas.kode=sampel.dinas WHERE tanggal<'
          + batasatas + ' and tanggal >' + batasbawah +
          ' GROUP BY dinas.kode ORDER BY dinas.kode ASC';
      end;
      With GridSampel do
      begin
        try
          Query.Open;
          if not Query.IsEmpty then
          begin
            Query.First;
            Visible := true;
            Insertcols(0, 8); // header begin
            With GridSampel do
            begin
              Cells[0, 0] := 'Tabel:';
              Alignments[0, 0] := tALeftJustify;
              FontStyles[0, 0] := [fsbold];

              Cells[0, 1] := 'Unit:';
              Alignments[0, 1] := tALeftJustify;
              FontStyles[0, 1] := [fsbold];

              MergeCells(1, 0, 8, 1);
              Cells[1, 0] := 'Profil Responden berdasarkan Pendidikan Periode '
                + sComboBox13.Text + ' ' + sComboBox4.Text;
              Alignments[1, 0] := tALeftJustify;
              FontStyles[1, 0] := [fsbold];
              Autosizecol(1, 5);
              MergeCells(1, 1, 8, 1);
              Cells[1, 1] := unitdinas;
              Alignments[1, 1] := tALeftJustify;
              FontStyles[1, 1] := [fsbold];
            end;
            MergeCells(0, 2, 1, 2);
            Colors[0, 2] := clTeal;
            Cells[0, 2] := 'No.';
            FontColors[0, 2] := clwindow;
            Alignments[0, 2] := tACenter;

            MergeCells(1, 2, 1, 2);
            Colors[1, 2] := clTeal;
            Cells[1, 2] := 'Unit Kerja';
            FontColors[1, 2] := clwindow;
            Alignments[1, 2] := tACenter;

            MergeCells(2, 2, 6, 1);
            Colors[2, 2] := clTeal;
            Cells[2, 2] := 'Pendidikan';
            FontColors[2, 2] := clwindow;
            Alignments[2, 2] := tACenter;

            MergeCells(8, 2, 1, 2);
            Colors[8, 2] := clTeal;
            Cells[8, 2] := '  Total  ';
            FontColors[8, 2] := clwindow;
            Alignments[8, 2] := tACenter;
            Autosizecol(8, 5);
            Colors[2, 3] := clTeal;
            Cells[2, 3] := '  SD  ';
            FontColors[2, 3] := clwindow;
            Alignments[2, 3] := tACenter;
            Autosizecol(2, 5);
            Colors[3, 3] := clTeal;
            Cells[3, 3] := '  SMP  ';
            FontColors[3, 3] := clwindow;
            Alignments[3, 3] := tACenter;
            Autosizecol(3, 5);

            Colors[4, 3] := clTeal;
            Cells[4, 3] := '  SMA  ';
            FontColors[4, 3] := clwindow;
            Alignments[4, 3] := tACenter;
            Autosizecol(4, 5);
            Colors[5, 3] := clTeal;
            Cells[5, 3] := 'Diploma';
            FontColors[5, 3] := clwindow;
            Alignments[5, 3] := tACenter;
            Autosizecol(5, 5);
            Colors[6, 3] := clTeal;
            Cells[6, 3] := '  S1  ';
            FontColors[6, 3] := clwindow;
            Alignments[6, 3] := tACenter;
            Autosizecol(6, 5);
            Colors[7, 3] := clTeal;
            Cells[7, 3] := 'S2 Keatas';
            FontColors[7, 3] := clwindow;
            Alignments[7, 3] := tACenter;
            Autosizecol(7, 5);
            i := 4;
            while NOT Query.Eof do
            begin
              InsertRows(i, 1);
              Cells[0, i] := inttostr(i - 3);
              Alignments[0, i] := tARightJustify;
              Autosizecol(0, 5);
              Cells[1, i] := Query.FieldByName('Nama_Dinas').AsString;
              Autosizecol(1, 5);
              Cells[2, i] := Query.FieldByName('sd').AsString;
              Alignments[2, i] := tARightJustify;
              Cells[3, i] := Query.FieldByName('smp').AsString;
              Alignments[3, i] := tARightJustify;
              Cells[4, i] := Query.FieldByName('sma').AsString;
              Alignments[4, i] := tARightJustify;
              Cells[5, i] := Query.FieldByName('s1').AsString;
              Alignments[5, i] := tARightJustify;
              Cells[6, i] := Query.FieldByName('s2').AsString;
              Alignments[6, i] := tARightJustify;
              Cells[7, i] := Query.FieldByName('s3').AsString;
              Alignments[7, i] := tARightJustify;
              Cells[8, i] := Query.FieldByName('Total').AsString;
              Alignments[8, i] := tARightJustify;
              Query.Next;
              inc(i);
            end;
            InsertRows(i, 1);
            MergeCells(0, i, 2, 1);
            Cells[0, i] := 'Jumlah';
            Colors[0, i] := clTeal;
            FontColors[0, i] := clwindow;
            for j := 2 to 8 do
            begin
              Cells[j, i] := floattostr(Columnsum(j, 4, i - 1));
              Colors[j, i] := clTeal;
              FontColors[j, i] := clwindow;
              Alignments[j, i] := tARightJustify;
            end;
          end;
        except
          Query.Close;
        end;
      end;
    end;
    // pendidikan end
    // pekerjaan
    if sComboBox14.ItemIndex = 2 then
    begin
      if sComboBox12.ItemIndex > 0 then
      begin // per dinas
        Query.SQL.Text :=
          'select dinas.Nama_Dinas,SUM(IF(Pekerjaan=1,1,0)) AS pns,SUM(IF(Pekerjaan=2,1,0)) AS tni, SUM(IF(Pekerjaan=3,1,0)) AS polri, SUM(IF(Pekerjaan=4,1,0)) AS swasta,'
          + 'SUM(IF(Pekerjaan=5,1,0)) AS wirausaha,SUM(IF(Pekerjaan=6,1,0)) AS pelajar,SUM(IF(Pekerjaan=7,1,0)) AS lainnya, Count(*) as Total from sampel Inner JOIN dinas on dinas.kode=sampel.dinas WHERE dinas.kode='
          + copy(sComboBox12.Text, 1, 4) + ' and tanggal<' + batasatas +
          ' and tanggal >' + batasbawah +
          ' group by dinas.kode order by dinas.kode asc';
      end
      else if sComboBox11.ItemIndex > 0 then
      begin // per kategori
        Query.SQL.Text :=
          'select dinas.Nama_Dinas,SUM(IF(Pekerjaan=1,1,0)) AS pns,SUM(IF(Pekerjaan=2,1,0)) AS tni, SUM(IF(Pekerjaan=3,1,0)) AS polri, SUM(IF(Pekerjaan=4,1,0)) AS swasta,'
          + 'SUM(IF(Pekerjaan=5,1,0)) AS wirausaha,SUM(IF(Pekerjaan=6,1,0)) AS pelajar,SUM(IF(Pekerjaan=7,1,0)) AS lainnya, Count(*) as Total from sampel Inner JOIN dinas on dinas.kode=sampel.dinas WHERE dinas.kategori="'
          + sComboBox11.Text + '" and tanggal<' + batasatas + ' and tanggal >' +
          batasbawah + ' GROUP BY dinas.kode ORDER BY dinas.kode ASC';
      end
      else
      begin
        Query.SQL.Text :=
          'select dinas.Nama_Dinas,SUM(IF(Pekerjaan=1,1,0)) AS pns,SUM(IF(Pekerjaan=2,1,0)) AS tni, SUM(IF(Pekerjaan=3,1,0)) AS polri, SUM(IF(Pekerjaan=4,1,0)) AS swasta,'
          + 'SUM(IF(Pekerjaan=5,1,0)) AS wirausaha,SUM(IF(Pekerjaan=6,1,0)) AS pelajar,SUM(IF(Pekerjaan=7,1,0)) AS lainnya, Count(*) as Total from sampel Inner JOIN dinas on dinas.kode=sampel.dinas WHERE tanggal<'
          + batasatas + ' and tanggal >' + batasbawah +
          ' GROUP BY dinas.kode ORDER BY dinas.kode ASC';
      end;
      With GridSampel do
      begin
        try
          Query.Open;
          if not Query.IsEmpty then
          begin
            Query.First;
            Visible := true;
            Insertcols(0, 8); // header begin
            With GridSampel do
            begin
              Cells[0, 0] := 'Tabel:';
              Alignments[0, 0] := tALeftJustify;
              FontStyles[0, 0] := [fsbold];

              Cells[0, 1] := 'Unit:';
              Alignments[0, 1] := tALeftJustify;
              FontStyles[0, 1] := [fsbold];

              MergeCells(1, 0, 8, 1);
              Cells[1, 0] := 'Profil Responden berdasarkan Pekerjaan Periode ' +
                sComboBox13.Text + ' ' + sComboBox4.Text;
              Alignments[1, 0] := tALeftJustify;
              FontStyles[1, 0] := [fsbold];
              Autosizecol(1, 5);
              MergeCells(1, 1, 8, 1);
              Cells[1, 1] := unitdinas;
              Alignments[1, 1] := tALeftJustify;
              FontStyles[1, 1] := [fsbold];
            end;
            MergeCells(0, 2, 1, 2);
            Colors[0, 2] := clTeal;
            Cells[0, 2] := 'No.';
            FontColors[0, 2] := clwindow;
            Alignments[0, 2] := tACenter;

            MergeCells(1, 2, 1, 2);
            Colors[1, 2] := clTeal;
            Cells[1, 2] := 'Unit Kerja';
            FontColors[1, 2] := clwindow;
            Alignments[1, 2] := tACenter;

            MergeCells(2, 2, 6, 1);
            Colors[2, 2] := clTeal;
            Cells[2, 2] := 'Pekerjaan';
            FontColors[2, 2] := clwindow;
            Alignments[2, 2] := tACenter;

            MergeCells(8, 2, 1, 2);
            Colors[8, 2] := clTeal;
            Cells[8, 2] := '  Total  ';
            FontColors[8, 2] := clwindow;
            Alignments[8, 2] := tACenter;
            Autosizecol(8, 5);
            Colors[2, 3] := clTeal;
            Cells[2, 3] := 'PNS';
            FontColors[2, 3] := clwindow;
            Alignments[2, 3] := tACenter;
            Autosizecol(2, 5);
            Colors[3, 3] := clTeal;
            Cells[3, 3] := 'TNI';
            FontColors[3, 3] := clwindow;
            Alignments[3, 3] := tACenter;
            Autosizecol(3, 5);

            Colors[4, 3] := clTeal;
            Cells[4, 3] := 'POLRI';
            FontColors[4, 3] := clwindow;
            Alignments[4, 3] := tACenter;
            Autosizecol(4, 5);
            Colors[5, 3] := clTeal;
            Cells[5, 3] := 'SWASTA';
            FontColors[5, 3] := clwindow;
            Alignments[5, 3] := tACenter;
            Autosizecol(5, 5);
            Colors[6, 3] := clTeal;
            Cells[6, 3] := 'WIRAUSAHA';
            FontColors[6, 3] := clwindow;
            Alignments[6, 3] := tACenter;
            Autosizecol(6, 5);
            Colors[7, 3] := clTeal;
            Cells[7, 3] := 'PELAJAR/MAHASISWA';
            FontColors[7, 3] := clwindow;
            Alignments[7, 3] := tACenter;
            Autosizecol(7, 5);
            Colors[8, 3] := clTeal;
            Cells[8, 3] := 'Lainnya';
            FontColors[8, 3] := clwindow;
            Alignments[8, 3] := tACenter;
            Autosizecol(8, 5);
            i := 4;
            while NOT Query.Eof do
            begin
              InsertRows(i, 1);
              Cells[0, i] := inttostr(i - 3);
              Alignments[0, i] := tARightJustify;
              Autosizecol(0, 5);
              Cells[1, i] := Query.FieldByName('Nama_Dinas').AsString;
              Autosizecol(1, 5);
              Cells[2, i] := Query.FieldByName('pns').AsString;
              Alignments[2, i] := tARightJustify;
              Cells[3, i] := Query.FieldByName('tni').AsString;
              Alignments[3, i] := tARightJustify;
              Cells[4, i] := Query.FieldByName('polri').AsString;
              Alignments[4, i] := tARightJustify;
              Cells[5, i] := Query.FieldByName('swasta').AsString;
              Alignments[5, i] := tARightJustify;
              Cells[6, i] := Query.FieldByName('wirausaha').AsString;
              Alignments[6, i] := tARightJustify;
              Cells[7, i] := Query.FieldByName('pelajar').AsString;
              Alignments[7, i] := tARightJustify;
              Cells[8, i] := Query.FieldByName('lainnya').AsString;
              Alignments[8, i] := tARightJustify;
              Cells[9, i] := Query.FieldByName('Total').AsString;
              Alignments[9, i] := tARightJustify;
              Query.Next;
              inc(i);
            end;
            InsertRows(i, 1);
            MergeCells(0, i, 2, 1);
            Cells[0, i] := 'Jumlah';
            Colors[0, i] := clTeal;
            FontColors[0, i] := clwindow;
            for j := 2 to 9 do
            begin
              Cells[j, i] := floattostr(Columnsum(j, 4, i - 1));
              Colors[j, i] := clTeal;
              FontColors[j, i] := clwindow;
              Alignments[j, i] := tARightJustify;
            end;
          end;
        except
          Query.Close;
        end;
      end;
    end;
    // pekerjan end
    // umur
    if sComboBox14.ItemIndex = 3 then
    begin
      if sComboBox12.ItemIndex > 0 then
      begin // per dinas
        Query.SQL.Text :=
          'select dinas.Nama_Dinas,SUM(IF(Umur>0 AND UMUR<21,1,0)) AS u1,SUM(IF(Umur>20 AND UMUR<31,1,0)) AS u2, SUM(IF(Umur>30 AND UMUR<41,1,0)) AS u3, SUM(IF(Umur>40 AND UMUR<51,1,0)) AS u4,'
          + 'SUM(IF(Umur>50 AND UMUR<61,1,0)) AS u5,SUM(IF(Umur>60,1,0)) AS u6, Count(*) as Total from sampel Inner JOIN dinas on dinas.kode=sampel.dinas WHERE dinas.kode='
          + copy(sComboBox12.Text, 1, 4) + ' and tanggal<' + batasatas +
          ' and tanggal >' + batasbawah +
          ' group by dinas.kode order by dinas.kode asc';
      end
      else if sComboBox11.ItemIndex > 0 then
      begin // per kategori
        Query.SQL.Text :=
          'select dinas.Nama_Dinas,SUM(IF(Umur>0 AND UMUR<21,1,0)) AS u1,SUM(IF(Umur>20 AND UMUR<31,1,0)) AS u2, SUM(IF(Umur>30 AND UMUR<41,1,0)) AS u3, SUM(IF(Umur>40 AND UMUR<51,1,0)) AS u4,'
          + 'SUM(IF(Umur>50 AND UMUR<61,1,0)) AS u5,SUM(IF(Umur>60,1,0)) AS u6, Count(*) as Total from sampel Inner JOIN dinas on dinas.kode=sampel.dinas WHERE dinas.kategori="'
          + sComboBox11.Text + '" and tanggal<' + batasatas + ' and tanggal >' +
          batasbawah + ' GROUP BY dinas.kode ORDER BY dinas.kode ASC';
      end
      else
      begin
        Query.SQL.Text :=
          'select dinas.Nama_Dinas,SUM(IF(Umur>0 AND UMUR<21,1,0)) AS u1,SUM(IF(Umur>20 AND UMUR<31,1,0)) AS u2, SUM(IF(Umur>30 AND UMUR<41,1,0)) AS u3, SUM(IF(Umur>40 AND UMUR<51,1,0)) AS u4,'
          + 'SUM(IF(Umur>50 AND UMUR<61,1,0)) AS u5,SUM(IF(Umur>60,1,0)) AS u6, Count(*) as Total from sampel Inner JOIN dinas on dinas.kode=sampel.dinas WHERE tanggal<'
          + batasatas + ' and tanggal >' + batasbawah +
          ' GROUP BY dinas.kode ORDER BY dinas.kode ASC';
      end;
      With GridSampel do
      begin
        try
          Query.Open;
          if not Query.IsEmpty then
          begin
            Query.First;
            Visible := true;
            Insertcols(0, 8); // header begin
            With GridSampel do
            begin
              Cells[0, 0] := 'Tabel:';
              Alignments[0, 0] := tALeftJustify;
              FontStyles[0, 0] := [fsbold];
              Cells[0, 1] := 'Unit:';
              Alignments[0, 1] := tALeftJustify;
              FontStyles[0, 1] := [fsbold];

              MergeCells(1, 0, 8, 1);
              Cells[1, 0] := 'Profil Responden berdasarkan Usia Periode ' +
                sComboBox13.Text + ' ' + sComboBox4.Text;
              Alignments[1, 0] := tALeftJustify;
              FontStyles[1, 0] := [fsbold];
              Autosizecol(1, 5);
              MergeCells(1, 1, 8, 1);
              Cells[1, 1] := unitdinas;
              Alignments[1, 1] := tALeftJustify;
              FontStyles[1, 1] := [fsbold];
            end;
            MergeCells(0, 2, 1, 2);
            Colors[0, 2] := clTeal;
            Cells[0, 2] := 'No.';
            FontColors[0, 2] := clwindow;
            Alignments[0, 2] := tACenter;

            MergeCells(1, 2, 1, 2);
            Colors[1, 2] := clTeal;
            Cells[1, 2] := 'Unit Kerja';
            FontColors[1, 2] := clwindow;
            Alignments[1, 2] := tACenter;

            MergeCells(2, 2, 6, 1);
            Colors[2, 2] := clTeal;
            Cells[2, 2] := 'Usia';
            FontColors[2, 2] := clwindow;
            Alignments[2, 2] := tACenter;

            MergeCells(8, 2, 1, 2);
            Colors[8, 2] := clTeal;
            Cells[8, 2] := '  Total  ';
            FontColors[8, 2] := clwindow;
            Alignments[8, 2] := tACenter;
            Autosizecol(8, 5);
            Colors[2, 3] := clTeal;
            Cells[2, 3] := '<20 Tahun';
            FontColors[2, 3] := clwindow;
            Alignments[2, 3] := tACenter;
            Autosizecol(2, 5);
            Colors[3, 3] := clTeal;
            Cells[3, 3] := '20-31 Tahun';
            FontColors[3, 3] := clwindow;
            Alignments[3, 3] := tACenter;
            Autosizecol(3, 5);

            Colors[4, 3] := clTeal;
            Cells[4, 3] := '30-41 Tahun';
            FontColors[4, 3] := clwindow;
            Alignments[4, 3] := tACenter;
            Autosizecol(4, 5);
            Colors[5, 3] := clTeal;
            Cells[5, 3] := '41-50 Tahun';
            FontColors[5, 3] := clwindow;
            Alignments[5, 3] := tACenter;
            Autosizecol(5, 5);
            Colors[6, 3] := clTeal;
            Cells[6, 3] := '51-60 Tahun';
            FontColors[6, 3] := clwindow;
            Alignments[6, 3] := tACenter;
            Autosizecol(6, 5);
            Colors[7, 3] := clTeal;
            Cells[7, 3] := '>60 Tahun';
            FontColors[7, 3] := clwindow;
            Alignments[7, 3] := tACenter;
            Autosizecol(7, 5);
            i := 4;
            while NOT Query.Eof do
            begin
              InsertRows(i, 1);
              Cells[0, i] := inttostr(i - 3);
              Alignments[0, i] := tARightJustify;
              Autosizecol(0, 5);
              Cells[1, i] := Query.FieldByName('Nama_Dinas').AsString;
              Autosizecol(1, 5);
              Cells[2, i] := Query.FieldByName('u1').AsString;
              Alignments[2, i] := tARightJustify;
              Cells[3, i] := Query.FieldByName('u2').AsString;
              Alignments[3, i] := tARightJustify;
              Cells[4, i] := Query.FieldByName('u3').AsString;
              Alignments[4, i] := tARightJustify;
              Cells[5, i] := Query.FieldByName('u4').AsString;
              Alignments[5, i] := tARightJustify;
              Cells[6, i] := Query.FieldByName('u5').AsString;
              Alignments[6, i] := tARightJustify;
              Cells[7, i] := Query.FieldByName('u6').AsString;
              Alignments[7, i] := tARightJustify;
              Cells[8, i] := Query.FieldByName('Total').AsString;
              Alignments[8, i] := tARightJustify;
              Query.Next;
              inc(i);
            end;
            InsertRows(i, 1);
            MergeCells(0, i, 2, 1);
            Cells[0, i] := 'Jumlah';
            Colors[0, i] := clTeal;
            FontColors[0, i] := clwindow;
            for j := 2 to 8 do
            begin
              Cells[j, i] := floattostr(Columnsum(j, 4, i - 1));
              Colors[j, i] := clTeal;
              FontColors[j, i] := clwindow;
              Alignments[j, i] := tARightJustify;
            end;
          end;
        except
          Query.Close;
        end;
      end;
    end;
    // umur end
    // jam
    if sComboBox14.ItemIndex = 4 then
    begin
      if sComboBox12.ItemIndex > 0 then
      begin // per dinas
        Query.SQL.Text :=
          'select dinas.Nama_Dinas,SUM(IF(Jam=1,1,0)) AS jam1,SUM(IF(Jam=2,1,0))as jam2, Count(*) as Total from sampel Inner JOIN dinas on dinas.kode=sampel.dinas WHERE dinas.kode='
          + copy(sComboBox12.Text, 1, 4) + ' and tanggal<' + batasatas +
          ' and tanggal >' + batasbawah +
          ' group by dinas.kode order by dinas.kode asc';
      end
      else if sComboBox11.ItemIndex > 0 then
      begin // per kategori
        Query.SQL.Text :=
          'select dinas.Nama_Dinas,SUM(IF(Jam=1,1,0)) AS jam1,SUM(IF(Jam=2,1,0))as jam2, Count(*) as Total from sampel Inner JOIN dinas on dinas.kode=sampel.dinas WHERE dinas.kategori="'
          + sComboBox11.Text + '" and tanggal<' + batasatas + ' and tanggal >' +
          batasbawah + ' GROUP BY dinas.kode ORDER BY dinas.kode ASC';
      end
      else
      begin
        Query.SQL.Text :=
          'select dinas.Nama_Dinas,SUM(IF(Jam=1,1,0)) AS jam1,SUM(IF(Jam=2,1,0))as jam2, Count(*) as Total from sampel Inner JOIN dinas on dinas.kode=sampel.dinas WHERE tanggal<'
          + batasatas + ' and tanggal >' + batasbawah +
          ' GROUP BY dinas.kode ORDER BY dinas.kode ASC';
      end;
      With GridSampel do
      begin
        try
          Query.Open;
          if not Query.IsEmpty then
          begin
            Query.First;
            Visible := true;
            Insertcols(0, 4); // header begin
            With GridSampel do
            begin
              Cells[0, 0] := 'Tabel:';
              Alignments[0, 0] := tALeftJustify;
              FontStyles[0, 0] := [fsbold];
              Cells[0, 1] := 'Unit:';
              Alignments[0, 1] := tALeftJustify;
              FontStyles[0, 1] := [fsbold];

              MergeCells(1, 0, 4, 1);
              Cells[1, 0] :=
                'Profil Responden berdasarkan Jam Kunjungan Periode ' +
                sComboBox13.Text + ' ' + sComboBox4.Text;
              Alignments[1, 0] := tALeftJustify;
              FontStyles[1, 0] := [fsbold];
              Autosizecol(1, 5);

              MergeCells(1, 1, 4, 1);
              Cells[1, 1] := unitdinas;
              Alignments[1, 1] := tALeftJustify;
              FontStyles[1, 1] := [fsbold];
            end;
            MergeCells(0, 2, 1, 2);
            Colors[0, 2] := clTeal;
            Cells[0, 2] := 'No.';
            FontColors[0, 2] := clwindow;
            Alignments[0, 2] := tACenter;

            MergeCells(1, 2, 1, 2);
            Colors[1, 2] := clTeal;
            Cells[1, 2] := 'Unit Kerja';
            FontColors[1, 2] := clwindow;
            Alignments[1, 2] := tACenter;

            MergeCells(2, 2, 2, 1);
            Colors[2, 2] := clTeal;
            Cells[2, 2] := 'Jam Kunjungan';
            FontColors[2, 2] := clwindow;
            Alignments[2, 2] := tACenter;

            MergeCells(4, 2, 1, 2);
            Colors[4, 2] := clTeal;
            Cells[4, 2] := '  Total  ';
            FontColors[4, 2] := clwindow;
            Alignments[4, 2] := tACenter;

            Colors[2, 3] := clTeal;
            Cells[2, 3] := '08.00-12.00';
            FontColors[2, 3] := clwindow;
            Alignments[2, 3] := tACenter;
            Autosizecol(2, 5);

            Colors[3, 3] := clTeal;
            Cells[3, 3] := '13.00-17.00';
            FontColors[3, 3] := clwindow;
            Alignments[3, 3] := tACenter;
            Autosizecol(3, 5);
            i := 4;
            while NOT Query.Eof do
            begin
              InsertRows(i, 1);
              Cells[0, i] := inttostr(i - 3);
              Alignments[0, i] := tARightJustify;
              Autosizecol(0, 5);
              Cells[1, i] := Query.FieldByName('Nama_Dinas').AsString;
              Autosizecol(1, 5);
              Cells[2, i] := Query.FieldByName('jam1').AsString;
              Alignments[2, i] := tARightJustify;
              Cells[3, i] := Query.FieldByName('jam2').AsString;
              Alignments[3, i] := tARightJustify;
              Cells[4, i] := Query.FieldByName('Total').AsString;
              Alignments[4, i] := tARightJustify;
              Query.Next;
              inc(i);
            end;
            InsertRows(i, 1);
            MergeCells(0, i, 2, 1);
            Cells[0, i] := 'Jumlah';
            Colors[0, i] := clTeal;
            FontColors[0, i] := clwindow;
            for j := 2 to 4 do
            begin
              Cells[j, i] := floattostr(Columnsum(j, 4, i - 1));
              Colors[j, i] := clTeal;
              FontColors[j, i] := clwindow;
              Alignments[j, i] := tARightJustify;
            end;
          end;
        except
          Query.Close;
        end;
      end;
    end;
    // jam end
  end
  else
    messagedlg('Silakan Lengkapi pilihan filter terlebih dahulu', mterror,
      [mbok], 0);
end;

procedure TMain.sComboBox11Change(Sender: TObject);
begin
  if sComboBox11.ItemIndex > 0 then
    sComboBox12.Enabled := true
  else
    sComboBox12.Enabled := false;
  sComboBox12.ItemIndex := 0;
end;

procedure TMain.sComboBox12Change(Sender: TObject);
begin
  sComboBox12.Hint := sComboBox12.Text;
end;

procedure TMain.sComboBox12Enter(Sender: TObject);
begin
  sComboBox12.Items.Clear;
  sComboBox12.Items.Add('Semua');
  if akses = 'PUSLAH' then
    Query.SQL.Text := 'SELECT * FROM dinas  where Kategori="' + sComboBox11.Text
      + '" ORDER BY Kode ASC'
  else
    Query.SQL.Text := 'SELECT * FROM dinas  ORDER BY Kode ASC';
  Query.Open;
  Query.First;
  while Not Query.Eof do
  begin
    sComboBox12.Items.Add(Query.FieldByName('Kode').AsString + ' ' +
      Query.FieldByName('Nama_Dinas').AsString);
    Query.Next;
  end;
  Query.Close;
end;

procedure TMain.sComboBox15Change(Sender: TObject);
begin
  case sComboBox15.ItemIndex of
    0:
      begin
        sComboBox10.Items.Clear;
        sComboBox10.Items.Add('Januari-Desember');
        sComboBox10.ItemIndex := 0;
      end;
    1:
      begin
        sComboBox10.Items.Clear;
        sComboBox10.Items.Add('Januari-Juni');
        sComboBox10.Items.Add('Juli-Desember');
        sComboBox10.ItemIndex := 0;
      end;
    2:
      begin
        sComboBox10.Items.Clear;
        sComboBox10.Items.Add('Januari-April');
        sComboBox10.Items.Add('Mei-Agustus');
        sComboBox10.Items.Add('September-Desember');
        sComboBox10.ItemIndex := 0;
      end;
    3:
      begin
        sComboBox10.Items.Clear;
        sComboBox10.Items.Add('Januari-Maret');
        sComboBox10.Items.Add('April-Juni');
        sComboBox10.Items.Add('Juli-September');
        sComboBox10.Items.Add('Oktober-Desember');
        sComboBox10.ItemIndex := 0;
      end;
    4:
      begin
        sComboBox10.Items.Clear;
        sComboBox10.Items.Add('Januari-Februari');
        sComboBox10.Items.Add('Maret-April');
        sComboBox10.Items.Add('Mei-Juni');
        sComboBox10.Items.Add('Juli-Agustus');
        sComboBox10.Items.Add('September-Oktober');
        sComboBox10.Items.Add('November-Desember');
        sComboBox10.ItemIndex := 0;
      end;
    5:
      begin
        sComboBox10.Items.Clear;
        sComboBox10.Items.Add('Januari');
        sComboBox10.Items.Add('Februari');
        sComboBox10.Items.Add('Maret');
        sComboBox10.Items.Add('April');
        sComboBox10.Items.Add('Mei');
        sComboBox10.Items.Add('Juni');
        sComboBox10.Items.Add('Juli');
        sComboBox10.Items.Add('Agustus');
        sComboBox10.Items.Add('September');
        sComboBox10.Items.Add('Oktober');
        sComboBox10.Items.Add('November');
        sComboBox10.Items.Add('Desember');
        sComboBox10.ItemIndex := 0;
      end;
  end;
end;

procedure TMain.sComboBox16Change(Sender: TObject);
begin
  case sComboBox16.ItemIndex of
    0:
      begin
        sComboBox13.Items.Clear;
        sComboBox13.Items.Add('Januari-Desember');
        sComboBox13.ItemIndex := 0;
      end;
    1:
      begin
        sComboBox13.Items.Clear;
        sComboBox13.Items.Add('Januari-Juni');
        sComboBox13.Items.Add('Juli-Desember');
        sComboBox13.ItemIndex := 0;
      end;
    2:
      begin
        sComboBox13.Items.Clear;
        sComboBox13.Items.Add('Januari-April');
        sComboBox13.Items.Add('Mei-Agustus');
        sComboBox13.Items.Add('September-Desember');
        sComboBox13.ItemIndex := 0;
      end;
    3:
      begin
        sComboBox13.Items.Clear;
        sComboBox13.Items.Add('Januari-Maret');
        sComboBox13.Items.Add('April-Juni');
        sComboBox13.Items.Add('Juli-September');
        sComboBox13.Items.Add('Oktober-Desember');
        sComboBox13.ItemIndex := 0;
      end;
    4:
      begin
        sComboBox13.Items.Clear;
        sComboBox13.Items.Add('Januari-Februari');
        sComboBox13.Items.Add('Maret-April');
        sComboBox13.Items.Add('Mei-Juni');
        sComboBox13.Items.Add('Juli-Agustus');
        sComboBox13.Items.Add('September-Oktober');
        sComboBox13.Items.Add('November-Desember');
        sComboBox13.ItemIndex := 0;
      end;
    5:
      begin
        sComboBox13.Items.Clear;
        sComboBox13.Items.Add('Januari');
        sComboBox13.Items.Add('Februari');
        sComboBox13.Items.Add('Maret');
        sComboBox13.Items.Add('April');
        sComboBox13.Items.Add('Mei');
        sComboBox13.Items.Add('Juni');
        sComboBox13.Items.Add('Juli');
        sComboBox13.Items.Add('Agustus');
        sComboBox13.Items.Add('September');
        sComboBox13.Items.Add('Oktober');
        sComboBox13.Items.Add('November');
        sComboBox13.Items.Add('Desember');
        sComboBox13.ItemIndex := 0;
      end;
  end;
end;

procedure TMain.sComboBox17Enter(Sender: TObject);
begin
  sComboBox17.Items.Clear;
  Query.SQL.Text := 'SELECT DISTINCT LEFT(tanggal,4) AS tahun FROM sampel';
  Query.Open;
  Query.First;
  while Not Query.Eof do
  begin
    sComboBox17.Items.Add(Query.FieldByName('Tahun').AsString);
    Query.Next;
  end;
  Query.Close;
end;

procedure TMain.sComboBox18Change(Sender: TObject);
begin
  if sComboBox18.ItemIndex = 1 then
  begin
    sComboBox19.Enabled := true;
    sComboBox19.ItemIndex := 0;
  end
  else
  begin
    sComboBox19.ItemIndex := -1;
    sComboBox19.Enabled := false;
  end;
end;

procedure TMain.sComboBox1Change(Sender: TObject);
begin
  sComboBox1.Hint := sComboBox1.Text;
  IF length(copy(sComboBox1.Text,6,LENGTH(sComboBox1.Text)-5))>60 then
  slabel35.Caption:=uppercase(copy(sComboBox1.Text,6,60)+'...') else
  slabel35.Caption:=uppercase(copy(sComboBox1.Text,6,LENGTH(sComboBox1.Text)-5));
end;

procedure TMain.sComboBox21Change(Sender: TObject);
begin
  case sComboBox21.ItemIndex of
    0:
      begin
        sComboBox20.Items.Clear;
        sComboBox20.Items.Add('Januari-Desember');
        sComboBox20.ItemIndex := 0;
      end;
    1:
      begin
        sComboBox20.Items.Clear;
        sComboBox20.Items.Add('Januari-Juni');
        sComboBox20.Items.Add('Juli-Desember');
        sComboBox20.ItemIndex := 0;
      end;
    2:
      begin
        sComboBox20.Items.Clear;
        sComboBox20.Items.Add('Januari-April');
        sComboBox20.Items.Add('Mei-Agustus');
        sComboBox20.Items.Add('September-Desember');
        sComboBox20.ItemIndex := 0;
      end;
    3:
      begin
        sComboBox20.Items.Clear;
        sComboBox20.Items.Add('Januari-Maret');
        sComboBox20.Items.Add('April-Juni');
        sComboBox20.Items.Add('Juli-September');
        sComboBox20.Items.Add('Oktober-Desember');
        sComboBox20.ItemIndex := 0;
      end;
    4:
      begin
        sComboBox20.Items.Clear;
        sComboBox20.Items.Add('Januari-Februari');
        sComboBox20.Items.Add('Maret-April');
        sComboBox20.Items.Add('Mei-Juni');
        sComboBox20.Items.Add('Juli-Agustus');
        sComboBox20.Items.Add('September-Oktober');
        sComboBox20.Items.Add('November-Desember');
        sComboBox20.ItemIndex := 0;
      end;
    5:
      begin
        sComboBox20.Items.Clear;
        sComboBox20.Items.Add('Januari');
        sComboBox20.Items.Add('Februari');
        sComboBox20.Items.Add('Maret');
        sComboBox20.Items.Add('April');
        sComboBox20.Items.Add('Mei');
        sComboBox20.Items.Add('Juni');
        sComboBox20.Items.Add('Juli');
        sComboBox20.Items.Add('Agustus');
        sComboBox20.Items.Add('September');
        sComboBox20.Items.Add('Oktober');
        sComboBox20.Items.Add('November');
        sComboBox20.Items.Add('Desember');
        sComboBox20.ItemIndex := 0;
      end;
  end;
end;

procedure TMain.sComboBox23Enter(Sender: TObject);
begin
  sComboBox23.Items.Clear;
  Query.SQL.Text := 'SELECT DISTINCT LEFT(tanggal,4) AS tahun FROM sampel';
  Query.Open;
  Query.First;
  while Not Query.Eof do
  begin
    sComboBox23.Items.Add(Query.FieldByName('Tahun').AsString);
    Query.Next;
  end;
  Query.Close;
end;

procedure TMain.sComboBox24Change(Sender: TObject);
begin
  case sComboBox24.ItemIndex of
    0:
      begin
        sComboBox25.Items.Clear;
        sComboBox25.Items.Add('Januari-Desember');
        sComboBox25.ItemIndex := 0;
      end;
    1:
      begin
        sComboBox25.Items.Clear;
        sComboBox25.Items.Add('Januari-Juni');
        sComboBox25.Items.Add('Juli-Desember');
        sComboBox25.ItemIndex := 0;
      end;
    2:
      begin
        sComboBox25.Items.Clear;
        sComboBox25.Items.Add('Januari-April');
        sComboBox25.Items.Add('Mei-Agustus');
        sComboBox25.Items.Add('September-Desember');
        sComboBox25.ItemIndex := 0;
      end;
    3:
      begin
        sComboBox25.Items.Clear;
        sComboBox25.Items.Add('Januari-Maret');
        sComboBox25.Items.Add('April-Juni');
        sComboBox25.Items.Add('Juli-September');
        sComboBox25.Items.Add('Oktober-Desember');
        sComboBox25.ItemIndex := 0;
      end;
    4:
      begin
        sComboBox25.Items.Clear;
        sComboBox25.Items.Add('Januari-Februari');
        sComboBox25.Items.Add('Maret-April');
        sComboBox25.Items.Add('Mei-Juni');
        sComboBox25.Items.Add('Juli-Agustus');
        sComboBox25.Items.Add('September-Oktober');
        sComboBox25.Items.Add('November-Desember');
        sComboBox25.ItemIndex := 0;
      end;
    5:
      begin
        sComboBox25.Items.Clear;
        sComboBox25.Items.Add('Januari');
        sComboBox25.Items.Add('Februari');
        sComboBox25.Items.Add('Maret');
        sComboBox25.Items.Add('April');
        sComboBox25.Items.Add('Mei');
        sComboBox25.Items.Add('Juni');
        sComboBox25.Items.Add('Juli');
        sComboBox25.Items.Add('Agustus');
        sComboBox25.Items.Add('September');
        sComboBox25.Items.Add('Oktober');
        sComboBox25.Items.Add('November');
        sComboBox25.Items.Add('Desember');
        sComboBox25.ItemIndex := 0;
      end;
  end;
end;

procedure TMain.sComboBox26Change(Sender: TObject);
begin
  sComboBox26.Hint := sComboBox26.Text;
end;

procedure TMain.sComboBox27Enter(Sender: TObject);
begin
  sComboBox27.Items.Clear;
  Query.SQL.Text := 'SELECT DISTINCT LEFT(tanggal,4) AS tahun FROM sampel';
  Query.Open;
  Query.First;
  while Not Query.Eof do
  begin
    sComboBox27.Items.Add(Query.FieldByName('Tahun').AsString);
    Query.Next;
  end;
  Query.Close;
  if sComboBox27.ItemHeight > 0 then
    sComboBox27.ItemIndex := 0;
end;

procedure TMain.sComboBox28Change(Sender: TObject);
begin
  sComboBox28.Hint := sComboBox28.Text;
end;

procedure TMain.sComboBox2Enter(Sender: TObject);
begin
  sComboBox2.Items.Clear;
  Query.SQL.Text := 'SELECT DISTINCT LEFT(tanggal,4) AS tahun FROM sampel';
  Query.Open;
  Query.First;
  while Not Query.Eof do
  begin
    sComboBox2.Items.Add(Query.FieldByName('Tahun').AsString);
    Query.Next;
  end;
  Query.Close;
  if sComboBox2.ItemHeight > 0 then
    sComboBox2.ItemIndex := 0;
end;

procedure TMain.sComboBox30Change(Sender: TObject);
begin
  case sComboBox30.ItemIndex of
    0:
      begin
        sComboBox29.Items.Clear;
        sComboBox29.Items.Add('Januari-Desember');
        sComboBox29.ItemIndex := 0;
      end;
    1:
      begin
        sComboBox29.Items.Clear;
        sComboBox29.Items.Add('Januari-Juni');
        sComboBox29.Items.Add('Juli-Desember');
        sComboBox29.ItemIndex := 0;
      end;
    2:
      begin
        sComboBox29.Items.Clear;
        sComboBox29.Items.Add('Januari-April');
        sComboBox29.Items.Add('Mei-Agustus');
        sComboBox29.Items.Add('September-Desember');
        sComboBox29.ItemIndex := 0;
      end;
    3:
      begin
        sComboBox29.Items.Clear;
        sComboBox29.Items.Add('Januari-Maret');
        sComboBox29.Items.Add('April-Juni');
        sComboBox29.Items.Add('Juli-September');
        sComboBox29.Items.Add('Oktober-Desember');
        sComboBox29.ItemIndex := 0;
      end;
    4:
      begin
        sComboBox29.Items.Clear;
        sComboBox29.Items.Add('Januari-Februari');
        sComboBox29.Items.Add('Maret-April');
        sComboBox29.Items.Add('Mei-Juni');
        sComboBox29.Items.Add('Juli-Agustus');
        sComboBox29.Items.Add('September-Oktober');
        sComboBox29.Items.Add('November-Desember');
        sComboBox29.ItemIndex := 0;
      end;
    5:
      begin
        sComboBox29.Items.Clear;
        sComboBox29.Items.Add('Januari');
        sComboBox29.Items.Add('Februari');
        sComboBox29.Items.Add('Maret');
        sComboBox29.Items.Add('April');
        sComboBox29.Items.Add('Mei');
        sComboBox29.Items.Add('Juni');
        sComboBox29.Items.Add('Juli');
        sComboBox29.Items.Add('Agustus');
        sComboBox29.Items.Add('September');
        sComboBox29.Items.Add('Oktober');
        sComboBox29.Items.Add('November');
        sComboBox29.Items.Add('Desember');
        sComboBox29.ItemIndex := 0;
      end;
  end;
end;

procedure TMain.sComboBox3Enter(Sender: TObject);
begin
  sComboBox3.Items.Clear;
  Query.SQL.Text := 'SELECT DISTINCT LEFT(tanggal,4) AS tahun FROM sampel';
  Query.Open;
  Query.First;
  while Not Query.Eof do
  begin
    sComboBox3.Items.Add(Query.FieldByName('Tahun').AsString);
    Query.Next;
  end;
  Query.Close;
end;

procedure TMain.sComboBox4Enter(Sender: TObject);
begin
  sComboBox4.Items.Clear;
  Query.SQL.Text := 'SELECT DISTINCT LEFT(tanggal,4) AS tahun FROM sampel';
  Query.Open;
  Query.First;
  while Not Query.Eof do
  begin
    sComboBox4.Items.Add(Query.FieldByName('Tahun').AsString);
    Query.Next;
  end;
  Query.Close;
end;

procedure TMain.sComboBox5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(Sender as TwinControl, true, true);
  end;
end;

procedure TMain.sComboBox6Change(Sender: TObject);
begin
  sComboBox6.Hint := sComboBox6.Text;
end;

procedure TMain.sComboBox6KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(Sender as TwinControl, true, true);
  end;
end;

procedure TMain.sComboBox7Change(Sender: TObject);
begin
  if sComboBox7.ItemIndex > 0 then
    sComboBox8.Enabled := true
  else
    sComboBox8.Enabled := false;
  sComboBox8.ItemIndex := 0;
end;

procedure TMain.sComboBox8Change(Sender: TObject);
begin
  sComboBox8.Hint := sComboBox8.Text;
end;

procedure TMain.sComboBox8Enter(Sender: TObject);
begin
  sComboBox8.Items.Clear;
  sComboBox8.Items.Add('Semua');
  if akses = 'PUSLAH' then
    Query.SQL.Text := 'SELECT * FROM dinas  where Kategori="' + sComboBox7.Text
      + '" ORDER BY Kode ASC'
  else
    Query.SQL.Text := 'SELECT * FROM dinas  ORDER BY Kode ASC';
  Query.Open;
  Query.First;
  while Not Query.Eof do
  begin
    sComboBox8.Items.Add(Query.FieldByName('Kode').AsString + ' ' +
      Query.FieldByName('Nama_Dinas').AsString);
    Query.Next;
  end;
  Query.Close;
end;

procedure TMain.sDBGrid3Enter(Sender: TObject);
begin
  Quser.AfterScroll(Quser);
end;

procedure TMain.sEdit12KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(Sender as TwinControl, true, true);
  end
  else if not Charinset(Key, ['1' .. '4']) then
  begin
    messagedlg('Isian hanya 1-4', mterror, [mbok], 0);
    Key := #0;
  end;
end;

procedure TMain.sEdit14KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(Sender as TwinControl, true, true);
  end;
end;

procedure TMain.sEdit15KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(Sender as TwinControl, true, true);
  end;
end;

procedure TMain.sEdit16KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(Sender as TwinControl, true, true);
  end;
end;

procedure TMain.sEdit17KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(Sender as TwinControl, true, true);
  end;
end;

procedure TMain.sMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and (sMemo1.Text = '') then
  begin
    Key := #0;
    sButton1.SetFocus;
  end
  else if (Key = #13) and (sMemo1.Lines[sMemo1.Lines.Count - 1] = '') then
  begin
    Key := #0;
    sMemo1.Lines.Delete(sMemo1.Lines.Count - 1);
    sButton1.SetFocus;
  end
end;

procedure TMain.sMemo2KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and (sMemo2.Text = '') then
  begin
    Key := #0;
    sButton3.SetFocus;
  end
  else if (Key = #13) and (sMemo2.Lines[sMemo2.Lines.Count - 1] = '') then
  begin
    Key := #0;
    sMemo2.Lines.Delete(sMemo2.Lines.Count - 1);
    sButton3.SetFocus;
  end
end;

end.

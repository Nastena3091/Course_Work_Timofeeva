unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Grids, DBGrids, ExtCtrls, ComCtrls, DBCtrls;

type
  TForm3 = class(TForm)
    mm1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    Panel1: TPanel;
    lbl1: TLabel;
    Edit1: TEdit;
    Panel2: TPanel;
    lbl3: TLabel;
    DateTimePicker1: TDateTimePicker;
    Button2: TButton;
    dbgrd1: TDBGrid;
    grp1: TGroupBox;
    lbl4: TLabel;
    ud1: TUpDown;
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    N3: TMenuItem;
    btn4: TButton;
    dblkcbb1: TDBLookupComboBox;
    grp2: TGroupBox;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl2: TLabel;
    dblkcbb2: TDBLookupComboBox;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    lbl18: TLabel;
    lbl19: TLabel;
    procedure N2Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure dblkcbb1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure edt1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  CenaTov, Cheknom, ChekSum:string;


implementation

uses Unit1, Unit2, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9;

{$R *.dfm}

procedure TForm3.N2Click(Sender: TObject);
begin
  Form1.Show();
end;

procedure TForm3.N5Click(Sender: TObject);
begin
  Close;
end;

procedure TForm3.btn4Click(Sender: TObject);
begin
  if dblkcbb1.KeyValue  = null then ShowMessage('Виберіть користувача')
  else
  begin
    lbl12.Caption:=inttostr(dblkcbb1.KeyValue);
    Panel2.Visible:=True;
    dblkcbb1.Visible:=False;
    lbl2.Visible:=False;
    Form1.pnl1.Visible:=True;
    Form1.pnl3.Visible:=True;
    Form1.pnl7.Visible:=True;
  end;
end;

procedure TForm3.dblkcbb1Click(Sender: TObject);
begin
lbl3.Caption := 'Менеджер: '+dblkcbb1.Text;
end;

procedure TForm3.N3Click(Sender: TObject);
begin
  if grp2.Caption='Вибраний чек' then begin
  Panel2.Visible:=False;
  dblkcbb1.Visible:=True;
  lbl2.Visible:=True;
  dblkcbb2.KeyValue:=0;
  lbl7.Caption:='';
  lbl8.Caption:='';
  lbl11.Caption:='';
  lbl18.Caption:='';
  edt1.Text:='1';
  grp1.Visible:=False;
  grp2.Visible:=False;
  grp2.Caption:='Вибраний чек';
  Form1.pnl1.Visible:=False;
  Form1.pnl3.Visible:=False;
  Form1.pnl7.Visible:=False;
  end
  else
    ShowMessage('Неможливо змінити користувача. Закрийте чек')
end;

procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
  lbl7.Caption:=dbgrd1.Fields[1].AsString;
  lbl8.Caption:=dbgrd1.Fields[2].AsString;
  lbl15.Caption:=dbgrd1.Fields[0].AsString;
  CenaTov:=IntToStr(DataModule2.dsTovar.DataSet.Fields[2].AsInteger * StrToInt(edt1.Text));
  lbl11.Caption:= CenaTov;
end;

procedure TForm3.edt1Change(Sender: TObject);
begin
  if lbl8.Caption<>'' then
  begin
  CenaTov:=FloatToStr(DataModule2.dsTovar.DataSet.Fields[2].AsFloat * StrToFloat(edt1.Text));
  lbl11.Caption:= CenaTov;
  lbl16.Caption:=edt1.Text;
  end;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  if dblkcbb2.KeyValue = null then ShowMessage('Виберіть клієнта')
  else
  begin
      dblkcbb2.Enabled:=False;
      lbl13.Caption:=inttostr(dblkcbb2.KeyValue);
      lbl16.Caption:= edt1.Text;
      grp1.Visible:=True;
      grp2.Visible:=True;
      lbl7.Caption:= '';
      lbl8.Caption:= '';
      lbl11.Caption:= '';

      DataModule2.qryWork3.Close;
      DataModule2.qryWork3.SQL.Text:='INSERT INTO Накладна ( [Дата збуту], [№ Клієнта], [Підсумкова сума] ) values (:dt,'+lbl13.Caption+', 0)';
      DataModule2.qryWork3.Parameters.ParamByName('dt').Value:=FormatDateTime('dd.mm.yyyy', DateTimePicker1.Date);
      DataModule2.qryWork3.ExecSQL;

      FormShow(sender);

      DataModule2.qryWork3.Close;
      DataModule2.qryWork3.SQL.Text:='select * from Накладна order by [Код накладної]';
      DataModule2.qryWork3.Open;

      DataModule2.qryWork3.Last;
      ChekNom:=DataModule2.dsWork3.DataSet.Fields[0].AsString;
      grp2.Caption:='Вибрана накладна №'+ChekNom;

      DataModule2.qryNakRep.Close;
      DataModule2.qryNakRep.SQl.Text:='SELECT Продаж.Код, Накладна.[Дата збуту], Товар.Назва, Продаж.[Кількість продано], Продаж.[Сума продано], [Персонал відділу].ПІБ, Продаж.[Код накладної], Товар.[Ціна за 10л]'
      + ' FROM Товар INNER JOIN ([Персонал відділу] INNER JOIN (Накладна INNER JOIN (Клієнти INNER JOIN Продаж ON Клієнти.[№ клієнта] = Продаж.[№ Клієнта]) ON Накладна.[Код накладної] = Продаж.[Код накладної])'
      + ' ON [Персонал відділу].[Табельний номер] = Продаж.[Табельний номер персоналу]) ON Товар.[Код товару] = Продаж.[Код товару]'
      + ' WHERE ((Продаж![Код накладної])='+ChekNom+')';
      DataModule2.qryNakRep.Open;
    end;
end;

procedure TForm3.Edit1Change(Sender: TObject);
begin
  DataModule2.qryTovar.Close;
  DataModule2.qryTovar.SQL.Text:= 'SELECT Товар.[Код товару], Товар.Назва, Товар.[Ціна за 10л] FROM Товар '
  +'WHERE ([Товар]![Назва] Like "%'+Edit1.Text+'%") '
  +'ORDER BY Товар.[Код товару];';
  DataModule2.qryTovar.Open;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
  DateTimePicker1.Date:=Date();

  DataModule2.qryNakladna.Close;
  DataModule2.qryNakladna.SQL.Text:= 'SELECT Накладна.[Код накладної], Накладна.[Дата збуту], Клієнти.[Назва компанії], Sum(Продаж.[Сума продано]) AS [Сума продано]'
+' FROM Товар INNER JOIN ([Персонал відділу] INNER JOIN (Накладна INNER JOIN'
+' (Клієнти INNER JOIN Продаж ON Клієнти.[№ клієнта] = Продаж.[№ Клієнта]) ON Накладна.[Код накладної] = Продаж.[Код накладної]) ON [Персонал відділу].[Табельний номер] = Продаж.[Табельний номер персоналу]) ON Товар.[Код товару] = Продаж.[Код товару]'
+' GROUP BY Накладна.[Код накладної], Накладна.[Дата збуту], Клієнти.[Назва компанії]'
+' ORDER BY Накладна.[Код накладної]';
  DataModule2.qryNakladna.Open;

end;

procedure TForm3.btn1Click(Sender: TObject);
begin
  if lbl7.Caption = '' then ShowMessage('Виберіть товар')
  else
  begin
    DataModule2.qryWork4.Close;
    DataModule2.qryWork4.SQL.Text:= 'INSERT INTO Продаж ( [Код накладної], [Табельний номер персоналу], [№ Клієнта], [Код товару], [Кількість продано], [Сума продано] ) '
    +'values ('+Cheknom+', '+lbl12.Caption+', '+lbl13.Caption+','+lbl15.Caption+', '+lbl16.Caption+', '+inttostr(StrToInt(edt1.Text)*StrToInt(lbl8.Caption))+')';
    DataModule2.qryWork4.ExecSQL;

    DataModule2.qryNakRep.Close;
    DataModule2.qryNakRep.SQl.Text:='SELECT Продаж.Код, Продаж.[Код накладної], [Персонал відділу].ПІБ AS [ПІБ працівника], Клієнти.[Назва компанії], '
    +'Товар.Назва, Товар.[Ціна за 10л], Продаж.[Кількість продано], Продаж.[Сума продано] '
    +'FROM Товар INNER JOIN ([Персонал відділу] INNER JOIN (Накладна INNER JOIN (Клієнти INNER JOIN Продаж ON Клієнти.[№ клієнта] '
    +'= Продаж.[№ Клієнта]) ON Накладна.[Код накладної] = Продаж.[Код накладної]) ON [Персонал відділу].[Табельний номер] = '
    +'Продаж.[Табельний номер персоналу]) ON Товар.[Код товару] = Продаж.[Код товару]'
    +' WHERE ((Продаж![Код накладної])='+ChekNom+') ORDER BY Продаж.Код';
    DataModule2.qryNakRep.Open;

    DataModule2.qryWork4.Close;
    DataModule2.qryWork4.SQL.Text:='SELECT Sum(Продаж.[Сума продано]) AS [Сума продано] FROM Продаж GROUP BY Продаж.[Код накладної] HAVING ((Продаж.[Код накладної])='+ChekNom+')';
    DataModule2.qryWork4.Open;
    ChekSum:= DataModule2.dsWork4.DataSet.Fields[0].AsString;
    lbl18.Caption:=ChekSum;

    DataModule2.qryWork4.Close;
    DataModule2.qryWork4.SQL.Text:='UPDATE Накладна SET Накладна.[Підсумкова сума] = '+ChekSum+''
    +' WHERE (Накладна![Код накладної]='+ChekNom+')';
    DataModule2.qryWork4.ExecSQL;
  end;
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
    Form4.Show();
end;

procedure TForm3.N7Click(Sender: TObject);
begin
  Form5.QuickRep1.PreviewModal;
end;

procedure TForm3.N9Click(Sender: TObject);
begin
  Form8.QuickRep1.PreviewModal;
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
  grp2.Caption:='Вибрана накладна';
  dblkcbb2.Enabled:=True;
  dblkcbb2.KeyValue:=0;
  lbl7.Caption:='';
  lbl8.Caption:='';
  lbl11.Caption:='';
  lbl18.Caption:='';
  edt1.Text:='1';
  grp1.Visible:=False;
  grp2.Visible:=False;
end;

procedure TForm3.N4Click(Sender: TObject);
begin
  form9.show();
end;

end.

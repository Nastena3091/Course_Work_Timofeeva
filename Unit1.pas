unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ComCtrls, StdCtrls, ExtCtrls, DBCtrls;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    ts1: TTabSheet;
    dbgrd1: TDBGrid;
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    edt1: TEdit;
    pnl5: TPanel;
    lbl3: TLabel;
    lbl4: TLabel;
    edt2: TEdit;
    edt3: TEdit;
    btn19: TButton;
    btn20: TButton;
    btn21: TButton;
    ts2: TTabSheet;
    dbgrd2: TDBGrid;
    pnl3: TPanel;
    lbl5: TLabel;
    lbl6: TLabel;
    btn13: TButton;
    btn14: TButton;
    btn15: TButton;
    btn16: TButton;
    edt4: TEdit;
    btn22: TButton;
    pnl6: TPanel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl17: TLabel;
    lbl18: TLabel;
    edt5: TEdit;
    edt6: TEdit;
    btn24: TButton;
    btn25: TButton;
    btn26: TButton;
    edt13: TEdit;
    edt14: TEdit;
    ts3: TTabSheet;
    dbgrd3: TDBGrid;
    pnl2: TPanel;
    lbl9: TLabel;
    lbl10: TLabel;
    edt7: TEdit;
    edt8: TEdit;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    pnl7: TPanel;
    lbl11: TLabel;
    lbl12: TLabel;
    btn8: TButton;
    btn27: TButton;
    btn28: TButton;
    btn29: TButton;
    edt9: TEdit;
    btn30: TButton;
    ts4: TTabSheet;
    edt11: TEdit;
    edt10: TEdit;
    edt12: TEdit;
    ts5: TTabSheet;
    dbgrd5: TDBGrid;
    lbl16: TLabel;
    lbl20: TLabel;
    btn9: TButton;
    dbgrd4: TDBGrid;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn19Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btn20Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn21Click(Sender: TObject);
    procedure edt11Change(Sender: TObject);
    procedure btn13Click(Sender: TObject);
    procedure btn24Click(Sender: TObject);
    procedure btn25Click(Sender: TObject);
    procedure btn14Click(Sender: TObject);
    procedure btn26Click(Sender: TObject);
    procedure btn15Click(Sender: TObject);
    procedure edt10Change(Sender: TObject);
    procedure btn22Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn27Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn28Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure edt12Change(Sender: TObject);
    procedure btn30Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn16Click(Sender: TObject);
    procedure btn29Click(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses Unit2, Unit5, Unit6, Unit8, Unit3, Unit4, Unit7, Unit9;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  edt2.Text:='';
  edt3.Text:='0';
  btn19.Visible:=true;
  btn20.Visible:=false;
  pnl5.Visible:=true;
  FormShow(Sender);
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  edt2.Text:=dbgrd1.Fields[1].AsString;
  edt3.Text:=dbgrd1.Fields[2].AsString;
  btn20.Visible:=true;
  btn19.Visible:=false;
  pnl5.Visible:=true;
  FormShow(Sender);
end;

procedure TForm1.btn19Click(Sender: TObject);
begin
  DataModule2.qryWork.Close;
  DataModule2.qryWork.SQL.Text:='INSERT INTO ����� ( [�����], [ֳ�� �� 10�] ) values ("'+edt2.Text+'", '+edt3.Text+')';
  DataModule2.qryWork.ExecSQL;

  FormShow(Sender);

  pnl5.Visible:=False;
end;

procedure TForm1.btn20Click(Sender: TObject);
begin
  DataModule2.qryWork.Close;
  DataModule2.qryWork.SQL.Text:='UPDATE ����� SET �����.����� = "'+edt2.Text+'", �����.[ֳ�� �� 10�] = '+edt3.Text+''
  +' WHERE (�����.[��� ������]='+dbgrd1.Fields[0].AsString+')';
  DataModule2.qryWork.ExecSQL;
  pnl5.Visible:=False;

  FormShow(Sender);
end;


procedure TForm1.FormShow(Sender: TObject);
begin
  DataModule2.qryTovar.Close;
  DataModule2.qryTovar.SQL.Text:= 'SELECT �����.[��� ������], �����.�����, �����.[ֳ�� �� 10�] FROM ����� ORDER BY �����.[��� ������]';
  DataModule2.qryTovar.Open;

  DataModule2.qryClient.Close;
  DataModule2.qryClient.SQL.Text:= 'SELECT �볺���.[� �볺���], �볺���.[����� ������], �볺���.[ϲ�(�������� ������)], �볺���.������, �볺���.������� FROM �볺��� ORDER BY �볺���.[� �볺���]';
  DataModule2.qryClient.Open;

  DataModule2.qryWorker.Close;
  DataModule2.qryWorker.SQL.Text:= 'SELECT [�������� �����].[��������� �����], [�������� �����].ϲ�, [�������� �����].������� FROM [�������� �����] ORDER BY [�������� �����].[��������� �����]';
  DataModule2.qryWorker.Open;

  DataModule2.qryNakladna.Close;
  DataModule2.qryNakladna.SQL.Text:= 'SELECT ��������.[��� ��������], ��������.[���� �����], �볺���.[����� ������], Sum(������.[���� �������]) AS [���� �������]'
  +' FROM ����� INNER JOIN ([�������� �����] INNER JOIN (�������� INNER JOIN'
  +' (�볺��� INNER JOIN ������ ON �볺���.[� �볺���] = ������.[� �볺���]) ON ��������.[��� ��������] = ������.[��� ��������]) ON [�������� �����].[��������� �����] = ������.[��������� ����� ���������]) ON �����.[��� ������] = ������.[��� ������]'
  +' GROUP BY ��������.[��� ��������], ��������.[���� �����], �볺���.[����� ������]'
  +' ORDER BY ��������.[��� ��������]';
  DataModule2.qryNakladna.Open;

  DataModule2.qryProdag.Close;
  DataModule2.qryProdag.SQL.Text:= 'SELECT ������.���, ������.[��� ��������], [�������� �����].ϲ�, �볺���.[����� ������], �����.�����, ������.[ʳ������ �������], ������.[���� �������] '
  +'FROM ����� INNER JOIN ([�������� �����] INNER JOIN (�������� INNER JOIN (�볺��� INNER JOIN ������ ON �볺���.[� �볺���] = ������.[� �볺���]) '
  +'ON ��������.[��� ��������] = ������.[��� ��������]) ON [�������� �����].[��������� �����] = ������.[��������� ����� ���������]) ON �����.[��� ������] = ������.[��� ������] '
  +'ORDER BY ������.���';
  DataModule2.qryProdag.Open;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  DataModule2.qryWork.Close;
  DataModule2.qryWork.SQL.Text:= 'DELETE * FROM ����� Where (�����.[��� ������] = '+dbgrd1.Fields[0].AsString+')';
  DataModule2.qryWork.ExecSQL;
  FormShow(Sender);
end;

procedure TForm1.btn21Click(Sender: TObject);
begin
  edt2.Text:='';
  edt3.Text:='0';
  pnl5.Visible:=false;
  FormShow(Sender);
end;

procedure TForm1.edt11Change(Sender: TObject);
begin
  DataModule2.qryTovar.Close;
  DataModule2.qryTovar.SQL.Text:= 'SELECT �����.[��� ������], �����.�����, �����.[ֳ�� �� 10�] FROM ����� '
+'WHERE ([�����]![�����] Like "%'+edt11.Text+'%") '
+'ORDER BY �����.[��� ������];';
  DataModule2.qryTovar.Open;

end;

procedure TForm1.btn13Click(Sender: TObject);
begin
  edt5.Text:='';
  edt14.Text:='';
  edt6.Text:='';
  edt13.Text:='';
  btn24.Visible:=true;
  btn25.Visible:=false;
  pnl6.Visible:=true;
  FormShow(Sender);
end;

procedure TForm1.btn24Click(Sender: TObject);
begin
  DataModule2.qryWork.Close;
  DataModule2.qryWork.SQL.Text:='INSERT INTO �볺��� ( [����� ������], [ϲ�(�������� ������)], ������, ������� ) values ("'+edt5.Text+'", "'+edt6.Text+'", "'+edt13.Text+'", '+edt14.Text+')';
  DataModule2.qryWork.ExecSQL;
  pnl6.Visible:=false;
  FormShow(Sender);
end;

procedure TForm1.btn25Click(Sender: TObject);
begin
  DataModule2.qryWork1.Close;
  DataModule2.qryWork1.SQL.Text:='UPDATE �볺��� SET �볺���.[����� ������] = "'+edt5.Text+'", �볺���.[ϲ�(�������� ������)] = "'+edt6.Text+'", �볺���.������ = "'+edt13.Text+'", �볺���.������� = "'+edt14.Text+'"'
  +' WHERE (�볺���.[� �볺���]='+dbgrd2.Fields[0].AsString+')';
  DataModule2.qryWork1.ExecSQL;
  pnl6.Visible:=False;
  FormShow(Sender);
end;

procedure TForm1.btn14Click(Sender: TObject);
begin
  edt5.Text:=dbgrd2.Fields[1].AsString;
  edt6.Text:=dbgrd2.Fields[2].AsString;
  edt13.Text:=dbgrd2.Fields[3].AsString;
  edt14.Text:=dbgrd2.Fields[4].AsString;
  btn25.Visible:=true;
  btn24.Visible:=false;
  pnl6.Visible:=true;
  FormShow(Sender);
end;

procedure TForm1.btn26Click(Sender: TObject);
begin
  edt5.Text:='';
  edt14.Text:='';
  edt6.Text:='';
  edt13.Text:='';
  pnl6.Visible:=false;
  FormShow(Sender);
end;

procedure TForm1.btn15Click(Sender: TObject);
begin
  DataModule2.qryWork1.Close;
  DataModule2.qryWork1.SQL.Text:= 'DELETE �볺���.[� �볺���] FROM �볺��� WHERE (([�볺���]![� �볺���]='+dbgrd2.Fields[0].AsString+'));';
  DataModule2.qryWork1.ExecSQL;
  FormShow(Sender);
end;

procedure TForm1.edt10Change(Sender: TObject);
begin
  DataModule2.qryClient.Close;
  DataModule2.qryClient.SQL.Text:= 'SELECT �볺���.[� �볺���], �볺���.[����� ������], �볺���.[ϲ�(�������� ������)], �볺���.������, �볺���.������� FROM �볺��� '
  +'WHERE ([�볺���]![����� ������] Like "%'+edt10.Text+'%") ORDER BY �볺���.[� �볺���]';
  DataModule2.qryClient.Open;
end;

procedure TForm1.btn22Click(Sender: TObject);
begin
  if edt4.text<>'' then begin
  DataModule2.qryClient.Close;
  DataModule2.qryClient.SQL.Text:= 'SELECT �볺���.[� �볺���], �볺���.[����� ������], �볺���.[ϲ�(�������� ������)], �볺���.������, �볺���.������� FROM �볺��� '
+'WHERE (([�볺���]![� �볺���]='+edt4.Text+')) ORDER BY �볺���.[� �볺���]';
  DataModule2.qryClient.Open;
  end
  else
  FormShow(Sender);
end;

procedure TForm1.btn9Click(Sender: TObject);
begin
  if edt1.text<>'' then begin
  DataModule2.qryTovar.Close;
  DataModule2.qryTovar.SQL.Text:= 'SELECT �����.[��� ������], �����.�����, �����.[ֳ�� �� 10�] FROM ����� '
+'WHERE ([�����]![��� ������] = '+edt1.Text+') ORDER BY �����.[��� ������]';
  DataModule2.qryTovar.Open;
  end
  else
  FormShow(Sender);
end;

procedure TForm1.btn8Click(Sender: TObject);
begin
  edt7.Text:='';
  edt8.Text:='';
  btn5.Visible:=true;
  btn6.Visible:=false;
  pnl2.Visible:=true;
  FormShow(Sender);
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
  DataModule2.qryWork2.Close;
  DataModule2.qryWork2.SQL.Text:='INSERT INTO [�������� �����] ( ϲ�, ������� ) values ("'+edt8.Text+'", "'+edt7.Text+'")';
  DataModule2.qryWork2.ExecSQL;
  pnl2.Visible:=false;
  FormShow(Sender);
end;

procedure TForm1.btn27Click(Sender: TObject);
begin
  edt7.Text:=dbgrd3.Fields[2].AsString;
  edt8.Text:=dbgrd3.Fields[1].AsString;
  btn5.Visible:=False;
  btn6.Visible:=true;
  pnl2.Visible:=true;
  FormShow(Sender);
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
  DataModule2.qryWork2.Close;
  DataModule2.qryWork2.SQL.Text:='UPDATE [�������� �����] SET [�������� �����].ϲ� = "'+edt8.Text+'", [�������� �����].������� = "'+edt7.Text+'"'
  +' WHERE ([�������� �����].[��������� �����]='+dbgrd3.Fields[0].AsString+')';
  DataModule2.qryWork2.ExecSQL;
  pnl2.Visible:=False;
  FormShow(Sender);
end;

procedure TForm1.btn28Click(Sender: TObject);
begin
  DataModule2.qryWork2.Close;
  DataModule2.qryWork2.SQL.Text:= 'DELETE [�������� �����].[��������� �����] FROM [�������� �����] WHERE (([�������� �����]![��������� �����]='+dbgrd3.Fields[0].AsString+'));';
  DataModule2.qryWork2.ExecSQL;
  FormShow(Sender);
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
  edt7.Text:='';
  edt8.Text:='';
  pnl2.Visible:=false;
  FormShow(Sender);
end;

procedure TForm1.edt12Change(Sender: TObject);
begin
  DataModule2.qryWorker.Close;
  DataModule2.qryWorker.SQL.Text:= 'SELECT [�������� �����].[��������� �����], [�������� �����].ϲ�, [�������� �����].������� FROM [�������� �����] '
  +'WHERE ([�������� �����].ϲ� Like "%'+edt12.Text+'%") ORDER BY [�������� �����].[��������� �����]';
  DataModule2.qryWorker.Open;
end;



procedure TForm1.btn30Click(Sender: TObject);
begin
  if edt9.text<>'' then begin
  DataModule2.qryWorker.Close;
  DataModule2.qryWorker.SQL.Text:= 'SELECT [�������� �����].[��������� �����], [�������� �����].ϲ�, [�������� �����].������� FROM [�������� �����] '
+'WHERE (([�������� �����]![��������� �����]='+edt9.Text+')) ORDER BY [�������� �����].[��������� �����]';
  DataModule2.qryWorker.Open;
  end
  else
  FormShow(Sender);
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  Form5.QuickRep1.PreviewModal;
end;

procedure TForm1.btn16Click(Sender: TObject);
begin
   Form6.QuickRep1.PreviewModal;
end;

procedure TForm1.btn29Click(Sender: TObject);
begin
   Form8.QuickRep1.PreviewModal;
end;

end.

unit Unit2;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule2 = class(TDataModule)
    con1: TADOConnection;
    dsTovar: TDataSource;
    dsClient: TDataSource;
    dsWorker: TDataSource;
    dsProdag: TDataSource;
    qryTovar: TADOQuery;
    qryClient: TADOQuery;
    qryWorker: TADOQuery;
    qryWork: TADOQuery;
    dsWork: TDataSource;
    qryWork1: TADOQuery;
    dsWork1: TDataSource;
    qryWork2: TADOQuery;
    dsWork2: TDataSource;
    qryNakladna: TADOQuery;
    dsNakladna: TDataSource;
    qryProdag: TADOQuery;
    dsWork3: TDataSource;
    qryWork3: TADOQuery;
    dsWork4: TDataSource;
    qryWork4: TADOQuery;
    qryNakRep: TADOQuery;
    dsNakRep: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation
uses Unit1, Unit4, Unit3, Unit7, Unit5, Unit6, Unit8;

{$R *.dfm}

end.

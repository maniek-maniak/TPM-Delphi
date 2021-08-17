unit AddToWarehouse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, StdCtrls, ExtCtrls;

type
  TFormAddToWarehouse = class(TForm)
    InputGroupBox: TGroupBox;
    LabInputIndex: TLabel;
    InputIndex: TEdit;
     LabInputOrderNumber: TLabel;
     InputOrderNumber: TEdit;
      LabInputStatus: TLabel;
      InputStatus: TEdit;
    LabInputShortName: TLabel;
    InputShortName: TEdit;
     LabInputFullName: TLabel;
     InputFullName: TEdit;
    btnSearch: TButton;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    OutputWarehouse: TEdit;
    OutputShelfNumber: TEdit;
    OutputRackNumber: TEdit;
    OutputQuantity: TEdit;
    OutputUnitValue: TEdit;
    OutputValue: TEdit;
    OutputShortName: TEdit;
    OutputFullName: TEdit;
    btnConfirmDelivery: TButton;
    OutputIndex: TEdit;
    OutputUnit: TEdit;
    RadioGroup1: TRadioGroup;
    RadioButtonOnePrint: TRadioButton;
    RadioButtonAllPrint: TRadioButton;
    RadioButtonNoPrint: TRadioButton;
    ButtonPrint: TButton;
    OutputDeliveryNote: TEdit;
    DB_status: TStatusBar;
    ListView: TListView;
    MainMenu1: TMainMenu;
    Dostawy1: TMenuItem;
    Przyjmij1: TMenuItem;
    Wyd1: TMenuItem;
    Wydajnazlecenieprodukcyjne1: TMenuItem;
    Wydajnazlecenietechniczne1: TMenuItem;
    Wydanianastan1: TMenuItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAddToWarehouse: TFormAddToWarehouse;

implementation

{$R *.dfm}

end.

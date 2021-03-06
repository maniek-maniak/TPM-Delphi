unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, StdCtrls;

type
  TForm1 = class(TForm)
    BtnLogin: TButton;
    InputPassword: TEdit;
    Label2: TLabel;
    InputLogin: TEdit;
    Label1: TLabel;
    IdHTTP1: TIdHTTP;
    procedure BtnLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
 Token, sId, sName: String;


var
  Form1: TForm1;

implementation

uses AddToWarehouse;

{$R *.dfm}

procedure TForm1.BtnLoginClick(Sender: TObject);
var
  Json: String;
  sResponse: string;
  lResponse, i: Integer;
  sModel: string;
  lModel, j: Integer;

  bKey: boolean;
  sKey : string;
  JsonToSend: TStringStream;
begin
   IdHTTP1.Request.ContentType    := 'application/json';
   Json:=        '{ ';
   Json:= Json +    '"email": "' + InputLogin.Text + '", ';
   Json:= Json +    '"password": "' + InputPassword.Text + '"';
   Json:= Json + ' }';
   JsonToSend := TStringStream.Create(Json);


   Token:= '';
   try
    Token:= IdHTTP1.post('http://127.0.0.1:8000/api/login', JsonToSend);
   except
    ShowMessage('Niawlasciwy login lub haslo!');
   end;

   if(Token <> '') then
   begin
    try
     sModel:= IdHTTP1.Get('http://127.0.0.1:8000/api/me/?token=' + Token);
     lModel:= length(sModel);
     ShowMessage(sModel);
     for j:= 1 to lModel do
     begin

       if (Pos('"id":',sKey)>0) then
       begin
         bKey:= true;
         if (sModel[j]<>',') then
         begin
          sId:= sId + sModel[j];
         end else begin
          //ShowMessage('sId = ' + sId);
          sKey:= '';
         end;
       end;

       if (Pos('"name":',sKey)>0) then
       begin
         bKey:= true;
         if (sModel[j]<>',') then
         begin
          sName:= sName + sModel[j];
         end else begin
          //ShowMessage('sName = ' + sName);
          sKey:= '';

          FormAddToWarehouse.Visible:= true;
         end;
       end;

       if sKey = '' then bKey:= false;
       if not bKey then sKey:= sKey + sModel[j];

     end;
    except

    end;
   end;
   lResponse:= length(sResponse);

end;

end.

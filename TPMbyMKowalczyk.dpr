program TPMbyMKowalczyk;

uses
  Forms,
  Login in 'Login.pas' {Form1},
  AddToWarehouse in 'AddToWarehouse.pas' {FormAddToWarehouse};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFormAddToWarehouse, FormAddToWarehouse);
  Application.Run;
end.

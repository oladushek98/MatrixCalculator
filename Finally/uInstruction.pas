unit uInstruction;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, uHi;

type
  TfmInstruction = class(TForm)
    rchInstruction: TRichEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmInstruction: TfmInstruction;

implementation

uses uChoise;

{$R *.dfm}

procedure TfmInstruction.FormShow(Sender: TObject);
begin
  fmInstruction.rchInstruction.Lines.LoadFromFile( way + 'Инструкция пользователя.txt');
end;

procedure TfmInstruction.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fmChoise.Enabled := true;
  fmChoise.Visible := true;
end;

end.

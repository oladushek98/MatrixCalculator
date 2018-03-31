unit uSound;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, MPlayer;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    Button3: TButton;
    Button4: TButton;
    MediaPlayer1: TMediaPlayer;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure MediaPlayer1Notify(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//��� ������ ��� ���������
type
  pt = ^TPlaylist;
  TPlayList = record
    name : string;
    next, prev : pt;
  end;

var
  Form1: TForm1;
  tracklist : pt;
  player, sound : boolean;
  MediaPlayer1 : TMediaPlayer;

implementation

uses uChoise, uHi, uPlayerOff;

{$R *.dfm}


//��������� �������� ������ (���������)
procedure CreateList;
var
  i : integer;
  first, last : pt;
begin
  i := 0;
  assignfile(f, way + '�����1.txt');
  reset(f);
  New(tracklist);
  while not EoF(f) do
  begin
    inc(i);
    new(tracklist^.next);
    tracklist^.next^.prev := tracklist;
    tracklist := tracklist^.next;
    readln(f, tracklist^.name);
    if i = 1 then first := tracklist;
  end;
  last := tracklist;
  tracklist^.next := first;
  tracklist := first;
  tracklist^.prev := last;
  closefile(f);
end;


procedure TForm1.Button2Click(Sender: TObject);
begin
  label1.Visible := false;
  label2.Visible := true;
  label2.Enabled := true;
  button1.Enabled := false;
  button1.Visible := false;
  button2.Enabled := false;
  button2.Visible := false;
  button3.Enabled := true;
  button3.Visible := true;
  button4.Enabled := true;
  button4.Visible := true;
end;


//��������� ������
procedure TForm1.Button1Click(Sender: TObject);
begin
  fmChoise.Show;
  if not assigned(form2) then
    form2 := tform2.create(self);
  form2.Show;
  form1.Visible := false;
  form1.Enabled := false;
  createlist;
  mediaplayer1.FileName := (way + '�����\�������\' + tracklist^.name);
  tracklist := tracklist^.next;
  mediaplayer1.Open;
  mediaplayer1.Play;
  player := true;
end;


//��������� � ������ ��� ������������
procedure TForm1.MediaPlayer1Notify(Sender: TObject);
  var
  i : integer;
begin
  mediaplayer1.FileName := (way + '�����\�������\' + tracklist^.name);
  tracklist := tracklist^.next;
  mediaplayer1.Open;
  mediaplayer1.Play;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  sound := true;
  fmChoise.Show;
  form1.Visible := false;
  form1.Enabled := false;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  sound := false;
  fmChoise.Show;
  form1.Visible := false;
  form1.Enabled := false;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fmHi.Enabled := true;
  fmHi.Visible := true;
end;

end.

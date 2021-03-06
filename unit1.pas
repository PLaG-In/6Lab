unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, StdCtrls, Vcl.MPlayer;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Timer1: TTimer;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Timer2: TTimer;
    Label1: TLabel;
    Image11: TImage;
    MediaPlayer1: TMediaPlayer;
    Button1: TButton;
    procedure Timer1Timer(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
   { procedure Timer2Timer(Sender: TObject); }
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BalloonsClick(Image: TImage);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  x, o: integer;
implementation

{$R *.dfm}

procedure BalloonsDown(Image: TImage; Label1: TLabel);
begin
  Image.Top := Image.Top + 1;
  if Image.Top >(Form1.height - 50) then
  begin
    Image.Top := 0;
    Image.Left := Random(Form1.width - Image.width - 50);
    x := x - 1;
    Label1.Caption := 'SCORE: '+IntToStr(x);
  end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  BalloonsDown(Image1, Label1);
  BalloonsDown(Image2, Label1);
  BalloonsDown(Image3, Label1);
  BalloonsDown(Image4, Label1);
  BalloonsDown(Image5, Label1);
  BalloonsDown(Image6, Label1);
  BalloonsDown(Image7, Label1);
  BalloonsDown(Image8, Label1);
  BalloonsDown(Image9, Label1);
  BalloonsDown(Image10, Label1);
end;

procedure TForm1.BalloonsClick(Image: TImage);
begin
  Image.Top := 0;
  Image.Left := Random(Form1.width  -  Image.Width - 50);
  x := x + 1;
  MediaPlayer1.FileName := 'exp.wav';
  MediaPlayer1.Open();
  MediaPlayer1.Play;
  Label1.Caption := 'SCORE: '+IntToStr(x);
end;

procedure TForm1.Image1Click(Sender: TObject);
begin
  BalloonsClick(Image1);
end;

procedure TForm1.Image2Click(Sender: TObject);
begin
  BalloonsClick(Image2);
end;

procedure TForm1.Image3Click(Sender: TObject);
begin
  BalloonsClick(Image3);
end;

procedure TForm1.Image4Click(Sender: TObject);
begin
  BalloonsClick(Image4);
end;

procedure TForm1.Image5Click(Sender: TObject);
begin
  BalloonsClick(Image5);
end;

procedure TForm1.Image6Click(Sender: TObject);
begin
  BalloonsClick(Image6);
end;

procedure TForm1.Image7Click(Sender: TObject);
begin
  BalloonsClick(Image7);
end;

procedure TForm1.Image8Click(Sender: TObject);
begin
  BalloonsClick(Image8);
end;

procedure TForm1.Image9Click(Sender: TObject);
begin
  BalloonsClick(Image9);
end;

procedure TForm1.Image10Click(Sender: TObject);
begin
  BalloonsClick(Image10);
end;

{procedure TForm1.Timer2Timer(Sender: TObject);
begin
  Timer1.Enabled := false;
  ShowMessage ('Game over!');
  Timer2.enabled := false;
  ShowMessage ('The score is ' + IntToStr(x) + ' points. Congratulations! ');
  x := 0;
  Label1.Caption := 'SCORE: '+IntToStr(x);
end;          }

procedure TForm1.FormCreate(Sender: TObject);
begin
  x := 0;
  Timer1.Enabled := false;
  Timer2.Enabled := false;
end;


procedure TForm1.Button1Click(Sender: TObject);
begin
  o := 1;
  if Timer1.enabled = true then
  begin
    x := x - 1;
    Timer1.Enabled := false;
    Button1.Caption := 'Start';
    o := 0;
  end;

  if (Timer1.Enabled = false) and (o = 1) then
  begin
    Timer1.enabled := true;
    Button1.Caption := 'Stop';
  end;
end;

end.

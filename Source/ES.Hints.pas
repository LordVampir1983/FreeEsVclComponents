{******************************************************************************}
{                            EsVclComponents v3.0                              }
{                           errorsoft(c) 2009-2018                             }
{                                                                              }
{                     More beautiful things: errorsoft.org                     }
{                                                                              }
{           errorsoft@mail.ru | vk.com/errorsoft | github.com/errorcalc        }
{              errorsoft@protonmail.ch | habrahabr.ru/user/error1024           }
{                                                                              }
{         Open this on github: github.com/errorcalc/FreeEsVclComponents        }
{                                                                              }
{ You can order developing vcl/fmx components, please submit requests to mail. }
{ �� ������ �������� ���������� VCL/FMX ���������� �� �����.                   }
{******************************************************************************}
unit ES.Hints;

{$SCOPEDENUMS ON}

interface

uses
  Vcl.Controls;

procedure ShowErrorHint(const Control: TControl; const Title, Description: string); overload;
procedure ShowErrorHint(const Control: TControl; const Hint: string); overload;
procedure ShowNormalHint(const Control: TControl; const Hint: string);

implementation

// rewrite me please!

{$R 'Cfx\EsVclComponentsCfx.res'}

uses
  Vcl.ImgList;

var
  FHint: TBalloonHint = nil;
  Images: TImageList = nil;

const
  NopeHintIndex = -1;
  ErrorHintIndex = 0;

function AppHint: TBalloonHint;
begin
  if FHint = nil then
  begin
    FHint := TBalloonHint.Create(nil);
    Images := TImageList.Create(nil);
    Images.Width := 24;
    Images.Height := 24;
    Images.ResInstLoad(HInstance, TResType.rtBitmap, 'ESERRORHINTIMAGE', 0);
    FHint.Images := Images;
    FHint.Delay := 20;
    FHint.HideAfter := 1000;
  end;

  Result := FHint;
end;

procedure ShowErrorHint(const Control: TControl; const Title, Description: string);
begin
  AppHint.Title := Title;
  AppHint.Description := Description;
  AppHint.ImageIndex := ErrorHintIndex;
  AppHint.ShowHint(Control);
end;

procedure ShowErrorHint(const Control: TControl; const Hint: string);
begin
  ShowErrorHint(Control, '', Hint);
end;

procedure ShowNormalHint(const Control: TControl; const Hint: string);
begin
  AppHint.Title := '';
  AppHint.Description := Hint;
  AppHint.ImageIndex := NopeHintIndex;
  AppHint.ShowHint(Control);
end;

initialization
finalization
  FHint.Free;
  Images.Free;

end.

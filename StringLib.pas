unit StringLib;

interface

uses Classes, SysUtils;

  function SomenteNumeros(S: string): Boolean;
  function RetornaNumeros(S: string): string;
  function FieldCount(S, Separator: string): Integer;
  function GetField(S: string; Field: Integer; Separator: string): string;
  function GetFieldKey(L: string; n: Integer; Separator: string): string;
  function GetFieldValue(L: string; n: Integer; Separator: string): string;
  function Contains(S, SearchStr: string): Boolean;
  function Replace(S, SearchStr, ReplaceStr: string): string;
  function Replicate(S: string; n: Integer): string;
  function StrZero(S: string; n: Integer): string;
  function StrSpace(S: string; N: Byte; Alinhamento: TAlignment): string;
  function Sort(S: string; Separador: Char): string;
  function DecToBase(Decimal: LongInt; const Base: Byte): string;
  function Reverse(S: string): string;

implementation

function SomenteNumeros(S: string): Boolean;
var
  ind: Integer;
begin
  Result := False;
  for ind := 1 to Length(S) do
    if not CharInSet(S[ind], ['0'..'9']) then
      Exit;
  Result := True;
end;

function RetornaNumeros(S: string): string;
var
  ind: Integer;
begin
  Result := '';
  for ind := 1 to Length(S) do
    if CharInSet(S[ind], ['0'..'9']) then
      Result := Result + S[ind];
end;

function FieldCount(S, Separator: string): Integer;
var
  Ptr, p, LenS, LenSep: Integer;
begin
  if S <> '' then
    Result := 1
  else
    begin
      Result := 0;
      Exit;
    end;
  Ptr := 0;
  LenS := Length(S);
  LenSep := Length(Separator);
  p := Pos(Separator, S);
  while p > 0 do
    begin
      Inc(Result);
      Ptr := Ptr + p + LenSep;
      p := Pos(Separator, Copy(S, Ptr, LenS - Ptr + 1));
    end;
end;

function GetField(S: string; Field: Integer; Separator: string): string;
var
  Ptr, p, LenS, LenSep, Fld: Integer;
begin
  if Field > FieldCount(S, Separator) then
    begin
      Result := '';
      Exit;
    end;
  Fld := 1;
  Ptr := 1;
  LenS := Length(S);
  LenSep := Length(Separator);
  p := Pos(Separator, S);
  while (p > 0) and (Fld < Field) do
    begin
      Inc(Fld);
      Ptr := Ptr + p + LenSep - 1;
      p := Pos(Separator, Copy(S, Ptr, LenS - Ptr + 1));
    end;
  if (p = 0) and (Fld = Field) then
    p := LenS - Ptr + 2;
  Result := Copy(S, Ptr, p - 1);
end;

function GetFieldKey(L: string; n: Integer; Separator: string): string;
begin
  Result := GetField(GetField(L, n, Separator), 1, '=');
end;

function GetFieldValue(L: string; n: Integer; Separator: string): string;
begin
  Result := GetField(GetField(L, n, Separator), 2, '=');
end;

function Contains(S, SearchStr: string): Boolean;
begin
  Result := Pos(SearchStr, S) > 0;
end;

function Replace(S, SearchStr, ReplaceStr: string): string;
begin
  Result := StringReplace(S, SearchStr, ReplaceStr, [rfReplaceAll, rfIgnoreCase]);
end;

function Replicate(S: string; n: Integer): string;
var
  f: Integer;
begin
  Result := '';
  for f := 1 to n do
    Result := Result + S;
end;

function StrZero(S: string; n: Integer): string;
begin
  Result := StringOfChar('0', n - Length(S)) + S;
end;

function StrSpace(S: string; N: Byte; Alinhamento: TAlignment): string;
begin
  Result := StringOfChar(' ', N - Length(S));
  case Alinhamento of
    taLeftJustify: Result := S + Result;
    taRightJustify: Result := Result + S;
  else
    Result := StringOfChar(' ', (N - Length(S)) div 2) + S + StringOfChar(' ', (N - Length(S)) div 2 + (N - Length(S)) mod 2);
  end;
end;

function Sort(S: string; Separador: Char): string; 
var ind: Integer;
    L: TStringList;
begin
  L := TStringList.Create;
  L.Sorted := True;
  S := Trim(S);
  for ind := 1 to FieldCount(S, Separador) do
    L.Add(GetField(S, ind, Separador));
  Result := '';
  for ind := 1 to L.Count do
    Result := Result + L[ind-1] + Separador;
  Result := Copy(Result, 1, Length(Result)-Length(Separador));
  L.Free;
end;

function DecToBase(Decimal: LongInt; const Base: Byte): string;
const
  Symbols: string = '0123456789ABCDEFGHIJ';
var
  Bas: Byte;
begin
  Result := '';
  repeat
    Bas := Decimal mod Base;
    Result := Symbols[Bas+1] + Result;
    Decimal := Decimal div Base;
  until Decimal = 0;
end;

function Reverse(S: string): string;
var
  ind: Integer;
begin
  Result := '';
  for ind := 1 to Length(S) do
    Result := S[ind] + Result;
end;

end.

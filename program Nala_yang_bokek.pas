program Nala_yang_bokek;
uses crt;
var
  n, i: integer;
  harga: array[1..100] of longint;
  apakahbisadibayarNala: boolean;
begin
  clrscr;
  apakahbisadibayarNala := false;
  write('Banyak minuman: ');
  readln(n);
  writeln;
  for i := 1 to n do
  begin
    write('Masukkan harga minuman ke-', i, ': ');
    readln(harga[i]);
  end;
  writeln;
  for i := 1 to n do
  if harga[i] < 10000 then
  begin
    writeln('Minuman yang bisa dibeli Nala:');
    writeln('Minuman ke-', i, ' dengan harga: Rp ', harga[i]);
    apakahbisadibayarNala := true;
  end;
  if not apakahbisadibayarNala then
  begin
    writeln('Tidak ada minuman yang bisa dibeli Nala');
  end;
end.
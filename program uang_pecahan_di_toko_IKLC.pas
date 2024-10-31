program uang_pecahan_di_toko_IKLC;
uses crt;
var
  uang, sisa: longint;
  pecahan100000, pecahan75000, pecahan50000: longint;
  pecahan20000, pecahan10000, pecahan5000: longint;
  pecahan2000, pecahan1000, pecahan500: longint;
  pecahan200, pecahan100: longint;
  Total: longint;
  hitung: integer;

begin
  clrscr;
  write('Masukkan Jumlah Uang = ');
  readln(uang);

  sisa := uang;
  pecahan100000 := sisa div 100000;
  sisa := sisa mod 100000;
  pecahan75000 := sisa div 75000;
  sisa := sisa mod 75000;
  pecahan50000 := sisa div 50000;
  sisa := sisa mod 50000;
  pecahan20000 := sisa div 20000;
  sisa := sisa mod 20000;
  pecahan10000 := sisa div 10000;
  sisa := sisa mod 10000;
  pecahan5000 := sisa div 5000;
  sisa := sisa mod 5000;
  pecahan2000 := sisa div 2000;
  sisa := sisa mod 2000;
  pecahan1000 := sisa div 1000;
  sisa := sisa mod 1000;
  pecahan500 := sisa div 500;
  sisa := sisa mod 500;
  pecahan200 := sisa div 200;
  sisa := sisa mod 200;
  pecahan100 := sisa div 100;
  sisa := sisa mod 100;

  Total := pecahan100000 + pecahan75000 + pecahan50000 +
           pecahan20000 + pecahan10000 + pecahan5000 +
           pecahan2000 + pecahan1000 + pecahan500 +
           pecahan200 + pecahan100;

  writeln('Total jumlah pecahan: ', Total);
  readln;
end.

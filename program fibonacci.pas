program fibonacci;
uses crt;
var
n,i,jumlah:integer;
function fibonacci (x:integer):integer;
begin
   if(x=1) then
   fibonacci:=0
   else
   if (x=2) then
   fibonacci:=1
   else
   fibonacci:=fibonacci(x-1)+fibonacci(x-2);
end;
begin
   clrscr;
   write('Masukkan banyak suku :  ');
   readln(n);
   writeln;
   for i:=1 to n do
   begin
      write(fibonacci(i));
      if i < n then
      begin
         write(', ');
      end;
      jumlah:= jumlah + fibonacci(i);
   end;
   writeln;
   writeln('Total semua deret fibonacci adalah ', jumlah);
   readln; 
end.
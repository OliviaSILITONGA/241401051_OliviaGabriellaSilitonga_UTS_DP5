program supermarket_anak_sby;
uses crt;
var
  pilihan, ya, hari, nama, kategori, namaproduk: string;
  hargaawal, hargadiskon, diskonhari, diskonkategori, diskontotal, sebelumdiskon: real;
  banyakdiskon, diskonmember, diskonstruk, banyakproduk: integer; 
  jumlahproduk, totalproduk, poin, kelipatan, totalbayar: integer;
  Member: boolean;

begin
  clrscr;
  write('Apakah Anda member?: ');
  readln(pilihan);
    if pilihan='Ya' then
    begin
        Member := true
    end
    else
    begin
        Member := false;
    end;
    
  writeln;
  write('Nama Anggota: ');
  readln(nama);
  write('Hari: ');
  readln(hari);
  write('Jumlah produk yang dibeli: ');
  readln(jumlahproduk);
  
  diskontotal := 0;
  hargadiskon := 0;
  sebelumdiskon := 0;
  
  for totalproduk := 1 to jumlahproduk do
  begin
    writeln;
    write('Kategori produk ke-', totalproduk, ' (Hygiene, Frozen Food, Elektronik, Laktosa, atau lainnya): ');
    readln(kategori);
    write('Nama produk ke-', totalproduk, ' : ');
    readln(namaproduk);
    write('Banyak produk ke-', totalproduk, ' : ');
    readln(banyakproduk);
    write('Harga produk ke-', totalproduk, ' : Rp ');
    readln(hargaawal);

    sebelumdiskon := sebelumdiskon + hargaawal;

    if kategori = 'Hygiene' then
    begin
      diskonkategori := 0.10
    end
    else if kategori = 'Frozen Food' then
    begin
      diskonkategori := 0.05
    end
    else if kategori = 'Elektronik' then
    begin
      diskonkategori := 0.30
    end
    else if kategori = 'Laktosa' then
    begin
      diskonkategori := 0.08
    end
    else
    begin
      diskonkategori := 0; 
    end;

    if (hari = 'Senin') or (hari = 'Selasa') or (hari = 'Rabu') or (hari = 'Kamis') then
    begin 
      diskonhari := diskonkategori
    end
    else
    begin
      diskonhari := 0;
    end;

    hargadiskon := hargaawal * (1 - diskonhari);
  
    diskonmember:= 100-90;
    diskonstruk:=100-95;
    banyakdiskon:= diskonmember + diskonstruk;

    if Member then
    begin
      hargadiskon := hargadiskon * 0.90;
    end;

    writeln('Harga setelah diskon: Rp ',hargadiskon:0:0);
    diskontotal := diskontotal + hargadiskon;
  end;
  writeln;
  if jumlahproduk >= 10 then
  begin
    diskontotal := diskontotal * 0.95;
  end;  

  writeln('Total harga sebelum diskon: Rp ', sebelumdiskon:0:0);
  writeln('Total harga setelah semua diskon: Rp ', diskontotal:0:0);
  
  if Member then
  begin
    kelipatan := trunc(diskontotal / 50000);
    poin := kelipatan;
    
    writeln('Poin: ', poin);

    if poin >= 50 then
    begin
      writeln('Anda memiliki 50 poin dan dapat menukarnya menjadi voucher diskon 20%!');
      writeln('Gunakan voucher?: ');
      readln(pilihan);
      if pilihan='Ya' then
      begin
        diskontotal := diskontotal * 0.80;
        poin := poin - 50;
      end;
    end;
  end;
  
  writeln('Diskon: ', diskonmember, '% + ', diskonstruk, '% = ', banyakdiskon, '%' );
  writeln('Pembayaran: Rp ', diskontotal:0:0);
end.
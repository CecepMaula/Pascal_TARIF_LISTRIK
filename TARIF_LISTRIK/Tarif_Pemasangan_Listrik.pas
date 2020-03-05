program pembayaran_total_pemsanagan_listrik;
{I.S.: user memasukkan nama pelanggan (Nama), alamat pelanggan (Alamat),
       jenis pelanggan (Jenis) dan kapasitas sambungan yang diinginkan (Sambungan) }

{F.S.: menampilkan tarif pemasangan listrik dari seorang pelanggan (Tarif)}
uses crt;
var
   Nama, Alamat, Jenis        : string;
   Sambungan, Tarif           : integer;
   PPN, Administrasi          : real;

begin
  textbackground(4); clrscr; textcolor(15);
  {memasukan nama pelanggan, alamat pelanggan, dan jenisnya}
  write('Nama Pelanggan                    : '); readln (Nama);
  write('Alamat Pelanggan                  : '); readln (Alamat);
  write('Jenis Pelanggan                   : '); readln (Jenis);
  {validasi jenis pelanggan}
  if (jenis <> 'Rumah Tangga') and (Jenis <> 'Industri')
     then
     begin
        textcolor(yellow);
        write('Jenis Pelanggan Hanya Rumah Tangga/Industri');
        end
        else
        begin
     {memasukkan kapsitas sambungan yang diinginkan}
     write('Kapasitas Sambungan               : '); readln (Sambungan);
     {validasi kapasitas sambungan per jenis pelanggan}
     if (Jenis= 'Rumah Tangga') and (Sambungan < 1) or (Sambungan > 4400)
     then
     begin
        textcolor(yellow);
        write('Kapasitas Sambungan Hanya Antara 1 - 4400');
        end
        else if (Jenis = 'Industri') and (Sambungan < 4401)
         then
         begin
         write('Kapasitas Sambungan Tidak Boleh Kurang Dari 4401');
       end;
      end;
     {menentukan tarif}
     {tarif untuk rumah tangga}
     if (Jenis ='Rumah Tangga') and((Sambungan >= 1) and (Sambungan <= 451))
     then
       tarif := 650000
      else
     if (Jenis ='Rumah Tangga') and ((Sambungan >= 451) and (Sambungan <= 900))
      then
        tarif := 850000
      else
     if (Jenis ='Rumah Tangga') and ((Sambungan >= 901) and (Sambungan <= 1200))
      then
      tarif := 1200000
      else
     if (Jenis ='Rumah Tangga') and ((Sambungan >= 1201) and (Sambungan <= 2200))
      then
        tarif := 1500000
      else
     if (Jenis ='Rumah Tangga') and ((Sambungan >= 2201) and (Sambungan <= 4400))
      then
        tarif := 1750000

{Tarif Untuk Industri}
      else
     if (Jenis ='Industri') and ((Sambungan >= 4401) and (Sambungan < 9500))
      then
        tarif := 2250000
         else
     if (Jenis ='Industri') and ((Sambungan >= 9501) and (Sambungan < 12000))
      then
        tarif := 2750000
         else
     if (Jenis ='Industri') and ((Sambungan >= 12001) and (Sambungan < 16000))
      then
        tarif := 3250000
         else
     if (Jenis ='Industri') and ((Sambungan >= 16001) and (Sambungan >22000))
      then
        tarif := 4500000
         else
     if (Jenis ='Industri') and (Sambungan > 22001)
      then
        tarif := 6750000

         else
       writeln('Data Tidak Valid : ');
       {Finish Menentukan Tarif}

     {Menentukan pajak}
     PPN := 0.1 * Tarif;
     Administrasi := 0.05 * Tarif;

     {Finish Menentukan PPN}

     textcolor(yellow);
     writeln('============');
     writeln('Jenis               : ', Jenis);
     writeln('Besar Sambungan     : ', Sambungan);
     writeln('Tarif               : ', Tarif);
     writeln('PPN                 : ', PPN:0:2);
     writeln('Biaya Administrasi  : ', Administrasi:0:2);
     writeln('Total Tarif         : ', Tarif+PPN+Administrasi:0:2);

       readln;


 end.



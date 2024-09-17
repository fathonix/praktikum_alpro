// Laporan Praktikum Algoritme Pemrograman ITK
// Template and build script are licensed under MIT.
// Contents are under proprietary license.

// Initial page setup
#import "@preview/codly:1.0.0": *
#show: codly-init.with()

// TODO: Remove unused space under header
#let def-margin = 2.54cm
#let border-color = rgb("#1eaaf1")
#let heading-color = rgb("#039be5")
#set page(
  paper: "a4",
  margin: (
    x: def-margin,
    bottom: def-margin,
    top: 7cm,
  ),
  header: context [
    #place(
      top,
      dx: -2.54cm,
    )[
      #box(
        width: 22cm,
        height: 1.5mm,
        fill: border-color,
      )
    ]
    #align(bottom + left)[
      #box(
        width: 1.25cm,
        height: 0.15cm,
        fill: border-color,
      )
    ]
  ],
  footer: context [
    #align(right)[#text(
      font: "Proxima Nova",
      size: 11pt,
    )[#context counter(page).display()]]
    #place(
      bottom,
      dx: -def-margin,
    )[
      #box(
        width: 22cm,
        height: 0.94cm,
        fill: border-color,
      )
    ]
  ],
)
#set par(justify: true)
#set text(
  font: "Times New Roman",
  size: 12pt,
)
#show heading: set text(
  size: 18pt,
  weight: "regular",
  fill: heading-color,
)
#show heading.where(level: 2): set text(
  size: 16pt,
)
#show heading.where(level: 3): set text(
  size: 14pt,
)

// Numbering formatting
#set enum(
  numbering: (it => strong[#it.]),
  indent: 0.64cm,
)

// Code block formatting
#codly(
  display-icon: false,
  display-name: false,
  zebra-fill: none,
)

// Bibliography configurations
#set bibliography(
  title: "Daftar Isi",
  style: "apa",
  full: true,
)

// Text starts below

= Dasar Teori

+ *Variabel*

  Variabel adalah penamaan pada data yang akan disimpan pada
  komputer. Variabel juga dapat didefinisikan sebagai tempat
  menyimpan data yang bersifat sementara. Variabel dapat
  diubah atau dimanipulasi selama program dijalankan.
  Variabel dapat membuat struktur kode lebih ringkas dan
  efisien. Pemberian nama pada variabel bisa dimulai dengan
  huruf dan tidak diawali dengan angka maupun spasi kosong,
  artinya nilainya bisa berubah-ubah. Variabel dalam python
  memiliki format penulisan `nama_variabel =`. Variabel dapat
  berisi teks maupun bilangan. Terdapat beberapa aturan
  penulisan variabel, yaitu:

  - Nama variabel boleh diawali menggunakan huruf atau garis
    bawah (\_) dan tidak dapat dimulai dengan angka (0-9),
    contoh: `namasaya`, `_nama`.
  - karakter pada variabel bersifat sensitif, artinya huruf
    kapital dan huruf kecil memiliki arti yang berbeda. 
  - nama variabel tidak boleh menggunakan kata kunci yang
    sudah ada dalam Python.


+ *I/O Konsol*

  I/O Konsol adalah mekanisme yang memungkinkan program untuk
  menerima input dari pengguna dan memberikan output kepada
  pengguna melalui konsol atau terminal. Konsol atau terminal
  adalah antarmuka berbasis teks yang sering digunakan untuk
  menjalankan aplikasi, menguji kode, atau berinteraksi
  dengan sistem operasi.

  Input adalah data atau informasi yang dimasukkan ke dalam
  sistem atau program dari sumber eksternal. Input ini bisa
  berasal dari pengguna, file, atau sumber data lain.
  
  Contoh:

  ```py
  input("Masukkan umur: ")
  ```

  Output adalah data atau informasi yang dihasilkan oleh
  sistem atau program dan disampaikan ke pengguna atau ke
  sistem lain. Output ini bisa berupa hasil perhitungan,
  pesan, atau data yang telah diproses.
  
  Contoh:

  ```py
  print("Memenuhi syarat")
  ```

+ *Operasi Aritmatika*

  Operasi Aritmatika adalah operator yang digunakan untuk
  melakukan operasi penjumlahan, pengurangan, pembagian, dan
  perkalian atau operator yg berfungsi untuk melakukan
  perhitungan pada bilangan. Operasi aritmatika digunakan
  dalam proses perhitungan matematis seperti penjumlahan,
  pengurangan, perkalian, pembagian dan lainnya. Berikut
  operator aritmatika yang dapat digunakan saat memprogram:

  #table(
    columns: 2,
    [Simbol], [Penjelasan],
    [+], [Penjumlahan],
    [-], [Pengurangan],
    [\*], [Perkalian],
    [/], [Pembagian],
    [\*\*], [Pangkat, misalnya $2^5$ ditulis `2 ** 5`],
    [\/\/], [Pembagian bilangan bulat, jika hasil pembagian adalah
    desimal maka dibulatkan ke nilai terkecil],
    [%], [Modulus atau sisa pembagian, misalnya $6 mod 2$ bernilai 0,
    ditulis `6 % 2`],
  )

+ *Konversi Tipe Data*

  Konversi tipe data adalah operasi mengonversi data dari
  satu tipe data ke tipe data yang lainnya, misalnya dari
  Number ke String, Number ke Boolean, dan lain sebagainya.
  
  Proses konversi dapat dilakukan secara otomatis (implisit)
  maupun manual (eksplisit).
  
  Untuk konversi manual, misalnya dari angka ke string
  menggunakan fungsi `str()`, `str(20)` menghasilkan `"20"`.
  
  Objek pembungkus nilai primitif seperti Number, String,
  Boolean dan lainnya (tanpa kata kunci new), dapat digunakan
  sebagai fungsi untuk mengonversi tipe data ke tipe terkait.

+ *Eksekusi Kondisional*

  Eksekusi kondisional adalah tempat kita mulai semacam
  menambahkan lebih banyak kecerdasan. Pada eksekusi
  kondisional ini kita dapat membuat pilihan, sesuai keadaan
  atau kondisi dan juga dapat membuat komputer tampak cerdas
  Dengan eksekusi kondisional, kita dapat menuliskan program
  yang berguna melalui pengecekan kondisi suatu pernyataan.
  Sehingga kita bisa membuat program kita lebih fleksibel.
  Type data output dari eksekusi kondisional adalah Boolean,
  Boolean merupakan suatu ekspresi yang mempunnyai nilai
  `True` dan `False`. Sebagai contoh:
	
  ```py
  x = 5 == 3
  print(x) # output: false
  print(type(x)) # output: <class 'bool'>
  ```

	Didalam eksekusi kondisional kita menggunakan perbandingan
  untuk mendapatkan nilai Boolean nya, kita bisa menggunakan
  beberapa operasi perbandingan ini:

	- != (Tidak Sama Dengan)

	- > (Lebih Besar Dari)

	- >= (Lebih Besar Sama Dengan)

	- < (Lebih Kecil Dari)

	- <= (Lebih Kecil Sama Dengan)

	- == (Sama Dengan)

	- != (Tidak sama dengan)

	If adalah pernyataan eksekusi konditional untuk menjalankan kode
  ketika hasil dari persamaan benar atau salah.

  Elif adalah pernyataan untuk kondisi selanjutnya setelah if jika if
  bernilai false.

	Else adalah kondisi terakhir jika if atau elif bernilai false.

  Eksekusi kondisional merupakan suatu cara untuk memprogram
  komputer agar mengambil langkah atau keputusan ketika
  diberikan kondisi atau syarat tertentu. Contohnya jika
  terdapat dua kode program dengan program pertama dapat
  dijalankan jika suatu variabel tidak lebih dari pada nol
  dan sebaliknya program kedua dapat dijalankan jika kondisi
  pertama tidak terpenuhi. Jadi, Eksekusi kondisional adalah
  tempat kita mulai semacam menambahkan lebih banyak
  kecerdasan. Dengan eksekusi kondisional, kita dapat menulis
  program yang berguna melalui pengecekan kondisi kapan suatu
  pernyataan akan dijalankan yang tergantung dari masukkan
  pengguna. Selain itu, kita dapat memberikan efek
  fleksibilitas pada program yang akan kita buat. Suatu
  pernyataan akan dijalankan ketika kondisi terpenuhi atau
  ketika ekspresi boolean bernilai benar. Sebaliknya,
  pernyataan tidak akan dieksekusi jika ekspresi bernilai
  False. Ekspresi boolean merupakan suatu ekspresi yang
  mengembalikan/memiliki suatu nilai boolean. Boolean sendiri
  memiliki nilai berupa Benar atau Salah yang dalam Python
  disebut dengan `True` atau `False`.

+ *Eksekusi Kondisional Bersarang*

  Eksekusi kondisional bersarang merupakan eksekusi
  kondisional yang dilakukan dalam eksekusi kondisional
  lainnya. Ini berguna untuk membuat keputusan yang lebih
  kompleks. Contoh kodenya pada Python adalah sebagai berikut:

  ```py
  umur = 15
  tinggi = 180

  if umur >= 17:
      print("Umur memenuhi, silakan masuk")
  else:
      if tinggi >= 150:
          print("Umur kurang tapi tinggi mencukupi, silakan masuk")
      else:
          print("Umur dan tinggi tidak mencukupi, dilarang masuk")
  ```

+ *Eksekusi Kondisional Majemuk*

  Eksekusi kondisional majemuk adalah suatu eksekusi kondisional
  dengan beberapa pernyataan persamaan yang berantai, yaitu
  menggunakan operator persamaan Boolean. Beberapa contoh operator persamaan Boolean adalah:

  - `and` (persamaan AND) menghasilkan `True` apabila dua Boolean
    sama-sama bernilai `True`.
  - `or` (persamaan OR) menghasilkan `True` apabila salah satu
    dari dua Boolean atau dua-duanya bernilai `True`.

  Contohnya dalam kode adalah sebagai berikut:

  ```py
  print(True and True) # output: True
  print(True and False) # output: False
  print(True or True) # output: True
  print(True or False) # output: True
  ```

= Source Code

== Konversi Suhu

```py
# Program konversi celsius ke fahrenheit

celsius = float(input("Masukkan suhu dalam celsius: "))
fahrenheit = (celsius * 9/5) + 32
print(fahrenheit)
```

=== Screenshot

#image("img/fig1.png")
#image("img/fig2.png")

=== Pembahasan

#table(
  columns: 2,
  [No. Baris], [Penjelasan],
  [3], [Ambil input pengguna dengan fungsi `input()`, ubah ke tipe data float dengan `float()` dan simpan pada variabel bernama `celsius`],
  [4], [Ubah nilai variabel `celsius` ke Fahrenheit menggunakan rumus
  dan simpan pada variabel `fahrenheit`],
  [5], [Cetak nilai variabel `fahrenheit`],
)

== Penghitung Gaji Pegawai

```py
upah = int(input("Masukkan upah per jam: "))
jam_kerja = 8
hari_kerja = int(input("Masukkan jumlah hari kerja dalam sepekan: "))

upah_pekanan = upah * jam_kerja * hari_kerja

print("Total upah pekanan yang diterima:", upah_pekanan)
```

=== Screenshot

#image("img/fig3.png")
#image("img/fig4.png")

=== Pembahasan

#table(
  columns: 2,
  [No. Baris], [Penjelasan],
  [1], [Ambil input pengguna dengan fungsi `input()`, ubah ke tipe data
  bilangan bulat dengan `int()` dan simpan pada variabel bernama `upah`],
  [2], [Buat variabel `jam_kerja` yang bernilai bilangan 8],
  [3], [Ambil input pengguna dengan fungsi `input()`, ubah ke tipe data bilangan bulat dengan `int()` dan simpan pada variabel bernama `hari_kerja`],
  [5], [Kalkulasikan upah pekanan pegawai dengan mengalikan nilai variabel `upah`, `jam_kerja` dan `hari_kerja`],
  [6], [Cetak hasil kalkulasi upah pekanan],
)

== Permainan Suit/Pingsut dengan Gaya Konsol

```py
import random, sys

print("\033[37m:: Permainan Suit/Pingsut ::\033[0m")
print("\033[37m1. Jempol (Gajah)\033[0m")
print("\033[37m2. Telunjuk (Manusia)\033[0m")
print("\033[37m3. Kelingking (Semut)\033[0m")

pil = int(input("Pilihan anda? (1/2/3): "))
if (pil < 1 or pil > 3):
    sys.exit("\033[31mMasukkan pilihan yang benar!! Pilihan antara 1-3.\033[0m")

# Pilihan komputer
kom = random.randint(1, 3)

# Tampilkan pilihan komputer
if kom == 1:
    print("\033[37mKomputer memilih: Jempol (Gajah)\033[0m")
elif kom == 2:
    print("\033[37mKomputer memilih: Telunjuk (Manusia)\033[0m")
else:
    print("\033[37mKomputer memilih: Kelingking (Semut)\033[0m")

# Logika permainan
if kom == 1:  # Komputer memilih Gajah
    if pil == 1:
        print("\033[34mSama-sama Gajah! Sesama gajah saling membantu. Seri!\033[0m")
    elif pil == 2:
        print("\033[31mDiinjek gajah.. kamu kalah!\033[0m")
    elif pil == 3:
        print("\033[32mKamu gigit gajah, kamu menang!\033[0m")

elif kom == 2:  # Komputer memilih Manusia
    if pil == 1:
        print("\033[32mKamu abis nginjek manusia, kamu menang!\033[0m")
    elif pil == 2:
        print("\033[34mSama-sama Manusia! Jangan berantem lah... Seri!\033[0m")
    elif pil == 3:
        print("\033[31mKamu dibunuh manusia, kamu kalah!\033[0m")

elif kom == 3:  # Komputer memilih Semut
    if pil == 1:
        print("\033[32mKamu gak sengaja injek semut, kamu menang!\033[0m")
    elif pil == 2:
        print("\033[31mKamu abis dikerjain sama semut, kamu kalah!\033[0m")
    elif pil == 3:
        print("\033[34mSesama semut saling membahu..! Seri!\033[0m")
```

=== Screenshot

#image("img/fig5.png")
#image("img/fig6.png")

=== Pembahasan

#table(
  columns: 2,
  [No. Baris], [Penjelasan],
  [3], [Kode `\033[37m` mengubah perilaku terminal dengan mengatur warna karakter setelahnya menjadi putih, dan kode `\033[0m` mengembalikan perilaku terminal ke semula],
  [10], [Kode `\033[31m` mengatur warna karakter menjadi merah],
  [26], [Kode `\033[34m` mengatur warna karakter menjadi biru],
  [30], [Kode `\033[32m` mengatur warna karakter menjadi hijau],
)

== Penerjemah Protein

```py
print("Program Penerjemah Protein")
kodon = input("Masukkan kodon protein: ")

if kodon == "AUG":
    print("Methionine")

if kodon == "UUU" or kodon == "UUC":
    print("Phenylalanine")

if kodon == "UUA" or kodon == "UUG":
    print("Leucine")

if kodon == "UCU" or kodon == "UCC" or kodon == "UCA" or kodon == "UCG":
    print("Serine")

if kodon == "UAU" or kodon == "UAC":
    print("Tyrosine")

if kodon == "UGU" or kodon == "UGC":
    print("Cysteine")

if kodon == "UGG":
    print("Tryptophan")
```

=== Screenshot

#image("img/fig7.png")
#image("img/fig8.png")

=== Pembahasan

#table(
  columns: 2,
  [No. Baris], [Penjelasan],
  [1], [Tampilkan judul program ke dalam konsol],
  [2], [mengambil kodon  dari pengguna yang dimasukkan ke dalam
  variabel yang dimasukkan kedalam input],
  [4], [Cek apakah pengguna memasukkan kodon AUG],
  [5], [jika kodon sesuai maka akan menampilkan Methionine],
  [7], [Cek apakah pengguna memasukkan kodon UUU atau UUC],
  [8], [Jika kodon sesuai maka akan menampilkan Phynylalanine],
  [13], [Cek apakah pengguna memasukkan kodon UCU atau UCC atau UCA
  atau UCG],
  [14], [Jika kodon sesuai makan akan menampilkan SERINE],
)

== Login dan Register

```py
```

== Screenshot

== Pembahasan

#table(
  columns: 2,
  [No. Baris], [Penjelasan],
)

= Kesimpulan

Setelah melakukan praktikum mengenai Variabel, Konsol I/O,
Konversi Tipe Data, Operasi Aritmatika, dan Eksekusi Kondisional,
dapat disimpulkan bahwa variable berfungsi sebagai tempat
penyimpanan sementara dari nilai atau data. Variabel dideklarasikan
dengan nama dan tipe data tertentu seperti integer, float, string,
dan boolean. Didalam bahasa pemrograman, penamaan variabel harus
mengikuti aturan penamaan, seperti tidak dimulai dengan angka dan
tidak menggunakan kata kunci yang sudah didefinisikan oleh bahasa.
Didalam input/output, Input mengacu pada data yang dimasukkan oleh
pengguna, biasanya melalui konsol, sementara output adalah hasil
yang ditampilkan oleh program. Pada bahasa Python, fungsi `input()`
digunakan untuk menerima input dari pengguna, sementara `print()`
digunakan untuk menampilkan output. Tipe data adalah kategori nilai
yang dapat disimpan oleh variabel dalam pemrograman. Tipe data yang
umum digunakan meliputi String, yang menyimpan teks atau karakter,
Integer untuk bilangan bulat, Boolean untuk nilai logika yang hanya
bisa bernilai `True` atau `False`, dan Float untuk bilangan desimal.

Operasi aritmatika juga bagian penting dalam algoritma pemrograman
yang digunakan dalam proses perhitungan matematis seperti
penjumlahan, pengurangan, perkalian, pembagian dan lainnya. Dan
yang terakhir ada eksekusi kondisional yang merupakan konsep dalam
pemrograman yang memungkinkan suatu blok kode hanya dijalankan jika
syarat tertentu terpenuhi. Langkah ini dilakukan dengan menggunakan
pernyataan seperti if-else, yang memeriksa kondisi. Jika kondisi
terpenuhi (`True`) satu blok kode akan dijalankan, jika tidak
(`False`) blok kode alternatif akan dijalankan. Fitur ini
memungkinkan program merespons kondisi yang berbeda dan membuat
keputusan yang dinamis.

= Saran

Penjelasan materi dari asisten lab sudah mudah dipahami, namun akan
lebih baik jika disampaikan dengan tempo yang lebih perlahan agar
semua praktikan, termasuk yang membutuhkan waktu lebih lama untuk
memahami, dapat mengikuti dengan lebih baik. Terimakasih.

#bibliography("prakalpro1.bib")
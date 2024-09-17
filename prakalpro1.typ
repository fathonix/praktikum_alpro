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
// TODO: Make heading size larger dynamically
#show heading: set text(
  // size: 18pt,
  weight: "regular",
  fill: heading-color,
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
  menyimpan data yang bersifat sementara. Variabel dapat diubah
  atau dimanipulasi selama program dijalankan. Variabel dapat
  membuat struktur kode lebih ringkas dan efisien.
  Pemberian nama pada variabel bisa dimulai dengan huruf dan tidak
  diawali dengan angka maupun spasi kosong.

+ *I/O Konsol*

+ *Operasi Aritmatika*

  Operasi aritmatika digunakan dalam proses perhitungan matematis
  seperti penjumlahan, pengurangan, perkalian, pembagian dan
  lainnya.

+ *Konversi Tipe Data*

  Konversi tipe data adalah 

+ *Eksekusi Kondisional*

  Eksekusi kondisional adalah suatu program yang dijalankan untuk
  membantu pengambilan suatu keputusan pada kondisi tertentu.

+ *Eksekusi Kondisional Bersarang*

+ *Eksekusi Kondisional Majemuk*

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

== Login dan Register

```py
```

== Screenshot

== Pembahasan

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
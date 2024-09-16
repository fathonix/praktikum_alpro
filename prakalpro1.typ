// Laporan Praktikum Algoritme Pemrograman ITK
// Template and build script are licensed under MIT.
// Contents are under proprietary license.

// Initial page setup
#set page(
  paper: "a4",
  margin: (
    x: 2.54cm,
    bottom: 2.54cm,
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
        fill: rgb("#1eaaf1"),
      )
    ]
    #align(bottom + left)[
      #box(
        width: 1.25cm,
        height: 0.15cm,
        fill: rgb("#1eaaf1"),
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
      dx: -2.54cm,
    )[
      #box(
        width: 22cm,
        height: 0.94cm,
        fill: rgb("#1eaaf1"),
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
  // size: 18pt,
  weight: "regular",
  fill: rgb("#039be5"),
)

// Numbering formatting
#set enum(
  numbering: (it => strong[#it.]),
  indent: 0.64cm,
  spacing: 10pt,
)

// Code block formatting
#show raw.where(block: true): code => {
  set par(justify: false)
  set text(
    size: 8pt,
    weight: "semibold",
  )
  block(
    width: 100%,
    fill: luma(240),
    inset: 10pt,
    radius: 4pt,
    {
      show raw.line: line => {
        text(fill: gray)[#line.number]
        h(1em)
        line.body
      }
      code
    }
  )
}

// Text starts below

= Dasar Teori

+ *Variabel*

+ *I/O Konsol*

+ *Operasi Aritmatika*

+ *Konversi Tipe Data*

+ *Eksekusi Kondisional*

+ *Eksekusi Kondisional Bersarang*

+ *Eksekusi Kondisional Majemuk*

= Source Code

== Konversi Suhu

```py
# Program konversi celsius ke fahrenheit

celsius = float(input("Masukkan suhu dalam celsius: "))
fahrenheit = celsius * 9.5 + 32
print(fahrenheit)
```

=== Screenshot

=== Pembahasan

== Penghitung Gaji Pegawai

```py
```

=== Screenshot

=== Pembahasan

== Permainan Suit/Pingsut dengan Gaya Konsol

```py
import random, sys

print(".:: Permainan Suit/Pingsut ::.")
print("1. Jempol (Gajah)")
print("2. Telunjuk (Manusia)")
print("3. Kelingking (Semut)")
pil = int(input("Pilihan anda ? "))

if(pil < 1 or pil > 3):
    sys.exit("Masukkan pilihan yang benar!! Pilihan antara 1 - 3.")

# Pilihan komputer
kom = random.randint(1,3)

if(kom == 1):
    if(pil == 1):
        print("Sama-sama Gajah! sesama gajah saling membantu...")
    if(pil == 2):
        print("Diinjek gajah.. kamu kalah!")
    if(pil == 3):
        print("Kamu gigit gajah, kamu menang!")
elif(kom == 2):
    if(pil == 1):
        print("Kamu abis nginjek manusia, kamu menang!")
    if(pil == 2):
        print("Sama-sama Manusia! Jangan berantem lah...")
    if(pil == 3):
        print("Kamu dibunuh manusia, kamu kalah!")
elif(kom == 3):
    if(pil == 1):
        print("Kamu abis dikerjain sama semut, kamu kalah!")
    if(pil == 2):
        print("Kamu gak sengaja injek semut, kamu menang!")
    if(pil == 3):
        print("Sesama semut saling membahu..!")
```

=== Screenshot

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

=== Pembahasan

== Login dan Register

```py
```

== Screenshot

== Pembahasan

= Kesimpulan

= Saran
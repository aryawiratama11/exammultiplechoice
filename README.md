# exammultiplechoice
Demo Aplikasi ujian online menggunakan teknologi API (Application Programming Interface)

Aplikasi terbagi menjadi 2 yaitu 
* Aplikasi web disisi Client (Native PHP)
* Aplikasi web disisi Server (Codeigniter)

# Arsitektur Aplikasi 

[ client ] --------> [ browser ] --------> [ request soal ] ---------> [ server ]

[ server ] --------> [ response soal ] ---------> [ browser ] ----------> [ tampilkan soal / error ]

# Deskripsi
Aplikasi pada sisi client digunakan untuk menampilkan soal yang tersedia dari server dan aplikasi server hanya menyediakan request dari client berupa API, tidak ada halaman soal.



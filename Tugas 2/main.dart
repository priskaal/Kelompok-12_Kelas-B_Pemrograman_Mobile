// NIM  : D121241026
// NAMA : PRISKALYANAWATI ALLORERUNG

// Function untuk menentukan persentase diskon berdasarkan total belanja
double hitungPersentaseDiskon(int total) {
  // Menggunakan operator comparison dan struktur if / else if / else
  if (total >= 100000) {
    return 0.15; // Diskon 15%
  } else if (total >= 50000) {
    return 0.10; // Diskon 10%
  } else if (total >= 25000) {
    return 0.05; // Diskon 5%
  } else {
    return 0.0;  // Tanpa diskon
  }
}

// Function untuk menghitung dan menampilkan total belanjaan
void prosesTransaksi(Map<String, int> daftarHarga, List<String> daftarBelanjaan) {
  int subtotal = 0;

  print("DAFTAR BELANJAAN");
  for (String item in daftarBelanjaan) {
    if (daftarHarga.containsKey(item)) {
      int harga = daftarHarga[item]!;
      subtotal += harga;
      print("- $item: Rp$harga");
    } else {
      print("- $item: (Barang tidak ditemukan)");
    }
  }

  double diskonRate = hitungPersentaseDiskon(subtotal);
  double nominalDiskon = subtotal * diskonRate;
  double totalAkhir = subtotal - nominalDiskon;

  print("------------------------");
  print("Subtotal     : Rp$subtotal");
  print("Diskon (${(diskonRate * 100).toInt()}%) : Rp${nominalDiskon.toInt()}");
  print("Total Akhir  : Rp${totalAkhir.toInt()}");
}

void main() {
  // 01. Menyimpan daftar harga (built-in type: Map<String, int>)
  Map<String, int> daftarHarga = {
    "Beras": 15000,
    "Minyak Goreng": 20000,
    "Gula Pasir": 14000,
    "Telur": 28000,
    "Kopi": 10000,
  };

  // 02. Menyimpan daftar belanjaan (built-in type: List<String>)
  List<String> daftarBelanjaan = [
    "Beras",
    "Minyak Goreng",
    "Telur",
  ];

  // 03 & 04. Eksekusi function untuk hitung diskon dan tampilkan total akhir
  prosesTransaksi(daftarHarga, daftarBelanjaan);
}

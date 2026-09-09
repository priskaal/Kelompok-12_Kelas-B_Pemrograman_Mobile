void main() {
  // 1. Menyimpan daftar harga barang (Menggunakan nama barang asli)
  Map<String, double> daftarHarga = {
    'Sepatu Nike': 150000,
    'Kaos Polos': 50000,
    'Topi Hitam': 35000,
    'Kaos Kaki': 15000,
  };

  // 2. Menyimpan daftar belanjaan (Apa saja yang dimasukkan ke keranjang)
  List<String> keranjangBelanja = ['Sepatu Nike', 'Topi Hitam', 'Kaos Kaki'];

  // Menghitung total belanja awal menggunakan fungsi
  double totalAwal = hitungTotalBelanja(daftarHarga, keranjangBelanja);

  // 3. Menentukan case diskon belanjaan berdasarkan totalnya
  double potonganDiskon = hitungPotonganDiskon(totalAwal);

  // Menghitung total akhir yang harus dibayar
  double totalAkhir = totalAwal - potonganDiskon;

  // 4. Menampilkan total akhir belanjaan ke layar
  print("========= NOTA BELANJA FAUZIAH =========");
  print("Barang yang dibeli : $keranjangBelanja");
  print("Total Belanja Awal  : Rp ${totalAwal.toStringAsFixed(0)}");
  print("Potongan Diskon     : Rp ${potonganDiskon.toStringAsFixed(0)}");
  print("----------------------------------------");
  print("TOTAL AKHIR : Rp ${totalAkhir.toStringAsFixed(0)}");
  print("========================================");
}

// Fungsi 1: Menghitung total belanja dengan cara membaca nama barangnya
double hitungTotalBelanja(Map<String, double> hargaBarang, List<String> isiKeranjang) {
  double total = 0;

  // "Untuk setiap BARANG yang ada di dalam KERANJANG..."
  for (String barang in isiKeranjang) {
    // Jika barang itu ada di daftar harga, tambahkan harganya ke total
    if (hargaBarang.containsKey(barang)) {
      total += hargaBarang[barang]!;
    }
  }
  return total;
}

// Fungsi 2: Menentukan diskon bertingkat (Case Diskon)
double hitungPotonganDiskon(double totalBelanja) {
  // Menggunakan operator perbandingan (>=) untuk menentukan case diskon
  if (totalBelanja >= 150000) {
    return totalBelanja * 0.15; // Case 1: Diskon 15% jika belanja 150 ribu ke atas
  } else if (totalBelanja >= 75000) {
    return totalBelanja * 0.10; // Case 2: Diskon 10% jika belanja 75 ribu ke atas
  } else {
    return 0; // Case 3: Tidak dapat diskon jika di bawah 75 ribu
  }
}
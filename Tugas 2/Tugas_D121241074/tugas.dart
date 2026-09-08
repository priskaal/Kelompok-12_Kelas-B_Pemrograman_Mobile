void main() {
  // 1. Menyimpan daftar harga
  List<double> daftarHarga = [15000, 25000, 30000, 50000, 75000];

  // 2. Menyimpan daftar belanja
  List<int> daftarBelanja = [1, 2, 3, 4, 5];

  // Menghitung total belanja
  double total = hitungTotal(daftarHarga, daftarBelanja);

  // 3. Menentukan case diskon belanjaan
  double diskon = hitungDiskon(total);

  // Menghitung total setelah diskon
  double totalAkhir = total - diskon;

  // 4. Menampilkan total akhir belanjaan
  print("===== STRUK BELANJA =====");
  print("Total belanja : Rp${total.toStringAsFixed(0)}");
  print("Diskon        : Rp${diskon.toStringAsFixed(0)}");
  print("Total akhir   : Rp${totalAkhir.toStringAsFixed(0)}");
}


// Function untuk menghitung total belanja
double hitungTotal(List<double> harga, List<int> belanja) {
  double total = 0;

  for (int i = 0; i < belanja.length; i++) {
    int indexBarang = belanja[i] - 1;

    if (indexBarang >= 0 && indexBarang < harga.length) {
      total += harga[indexBarang];
    }
  }

  return total;
}


// Function untuk menentukan diskon
double hitungDiskon(double total) {
  double diskon = 0;

  if (total >= 100000) {
    diskon = total * 0.20; // Diskon 20%
  } else if (total >= 50000) {
    diskon = total * 0.10; // Diskon 10%
  } else if (total >= 25000) {
    diskon = total * 0.05; // Diskon 5%
  } else {
    diskon = 0; // Tidak mendapat diskon
  }

  return diskon;
}
void main() {
  List<List<int>> array2D = [];

  // Baris 1: Kelipatan 6, mulai dari 6
  List<int> row1 = List.generate(4, (index) => (index + 1) * 6);
  array2D.add(row1);

  // Baris 2: Bilangan ganjil mulai dari 3
  List<int> row2 = List.generate(5, (index) => 3 + (index * 2));
  array2D.add(row2);

  // Baris 3: Bilangan pangkat tiga dari 4 ke atas
  List<int> row3 = List.generate(6, (index) => (index + 4) * (index + 4) * (index + 4));
  array2D.add(row3);

  // Baris 4: Bilangan beda 7 mulai dari 3
  List<int> row4 = List.generate(7, (index) => 3 + (index * 7));
  array2D.add(row4);

  // Cetak hasilnya
  print("Isi List:");
  for (var row in array2D) {
    print(row.join(" "));
  }
}
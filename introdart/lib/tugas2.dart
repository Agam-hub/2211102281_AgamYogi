import 'dart:io';

void main() {
  // Meminta input dari pengguna
  stdout.write("Bilangan 1: ");
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("Bilangan 2: ");
  int b = int.parse(stdin.readLineSync()!);

  // Menghitung FPB menggunakan fungsi hitungFPB
  int fpb = hitungFPB(a, b);
  print("FPB $a dan $12
  b = $fpb");
}

// Fungsi untuk menghitung FPB menggunakan algoritma Euclidean
int hitungFPB(int x, int y) {
  while (y != 0) {
    int temp = y; 
    y = x % y; 
    x = temp; 
  }
  return x; 
}
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:praktikum6/main.dart'; // Sesuaikan dengan path yang benar

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp()); // Hapus 'const' di sini

    // Pastikan angka awal adalah 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Cari tombol dengan ikon '+', lalu tekan.
    final Finder addButton = find.byIcon(Icons.add);
    expect(addButton, findsOneWidget); // Pastikan tombol ada sebelum ditekan

    await tester.tap(addButton);
    await tester.pumpAndSettle(); // Menunggu semua animasi selesai

    // Pastikan angka bertambah menjadi 1.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}

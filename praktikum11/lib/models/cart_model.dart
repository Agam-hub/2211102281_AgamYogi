import 'package:flutter/material.dart';
import 'dart:collection';
import 'item.dart';

class CartModel extends ChangeNotifier {
  final List<Item> _items = [];

  // Getter untuk mendapatkan daftar item (read-only)
  UnmodifiableListView<Item> get items => UnmodifiableListView(_items);

  // Getter untuk menghitung total harga
  int get totalPrice => _items.fold(0, (sum, item) => sum + item.price);

  // Menambahkan item ke dalam cart
  void add(Item item) {
    _items.add(item);
    notifyListeners(); // Beritahu listener ada perubahan
  }

  // Menghapus semua item dalam cart
  void removeAll() {
    _items.clear();
    notifyListeners();
  }
}

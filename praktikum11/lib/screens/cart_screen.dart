import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart_model.dart';
import '../widgets/cart_item_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var cart = Provider.of<CartModel>(context);
    return Scaffold(
      appBar: AppBar(title: const Text("Keranjang Belanja")),
      body:
          cart.items.isEmpty
              ? const Center(child: Text("Keranjang masih kosong"))
              : Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: cart.items.length,
                      itemBuilder: (context, index) {
                        final item = cart.items[index];
                        return CartItemWidget(item: item);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Text(
                          "Total: Rp ${cart.totalPrice}",
                          style: const TextStyle(fontSize: 20),
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {
                            cart.removeAll();
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Keranjang telah dikosongkan"),
                              ),
                            );
                          },
                          child: const Text("Hapus Semua"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
    );
  }
}

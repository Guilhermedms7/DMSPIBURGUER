import 'package:flutter/material.dart';
import 'package:piburguer/components/my_button.dart';
import 'package:piburguer/components/my_cart_tile.dart';
import 'package:piburguer/models/cart_item.dart';
import 'package:piburguer/models/restaurant.dart';
import 'package:piburguer/pages/payment_page.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        // Cart
        final userCart = restaurant.cart;

        // Scaffold UI
        return Scaffold(
          appBar: AppBar(
            title: Center(child: const Text('Carrinho')),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              // Limpar carrinho
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text(
                          "Tem certeza de que deseja limpar o carrinho?"),
                      actions: [
                        // Cancelar botao
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("Cancelar"),
                        ),

                        // yes
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            restaurant.clearCart();
                          },
                          child: const Text("Sim"),
                        ),
                      ],
                    ),
                  );
                },
                icon: const Icon(Icons.delete),
              ),
            ],
          ),
          body: Column(
            children: [
              // list of cart
              Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty
                        ? const Expanded(
                            child:
                                Center(child: Text("O Carrinho esta vazio..")),
                          )
                        : Expanded(
                            child: ListView.builder(
                              itemCount: userCart.length,
                              itemBuilder: (context, index) {
                                // Get individual cart item
                                final CartItem cartItem = userCart[index];

                                // Return cart tile
                                return MyCartTile(cartItem: cartItem);
                              },
                            ),
                          ),
                  ],
                ),
              ),

              // button to pay
              MyButton(
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PaymentPage(),
                        ),
                      ),
                  text: "Vá para a finalização da compra"),

              const SizedBox(height: 25),
            ],
          ),
        );
      },
    );
  }
}

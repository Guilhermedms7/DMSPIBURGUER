import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:piburguer/models/cart_item.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  // Lista de itens de menu
  final List<Food> _menu = [
    // Exemplo de um item de menu: um cheeseburger
    Food(
      name: "Big Burguer",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burgers/bigburguer.jpg",
      price: 8.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 3.99),
      ],
    ),

    Food(
      name: "Burger Classico",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burgers/burgerclassico.png",
      price: 8.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 3.99),
      ],
    ),

    Food(
      name: "Piburger",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burgers/burgerpiclassico.jpg",
      price: 8.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 3.99),
      ],
    ),

    Food(
      name: "BIG Piburger",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burgers/piburger.png",
      price: 8.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 3.99),
      ],
    ),

    Food(
      name: "Supremo Burguer",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burgers/supremo.jpg",
      price: 8.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 3.99),
      ],
    ),

    //salads
    Food(
      name: "Salada",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/salads/salada1.jpg",
      price: 8.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 3.99),
      ],
    ),

    //desserts
    Food(
      name: "Brownie",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/desserts/brownie.jpg",
      price: 8.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 3.99),
      ],
    ),

    Food(
      name: "MilkShake",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/desserts/milkshake.jpg",
      price: 8.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 3.99),
      ],
    ),
    Food(
      name: "Petit gâteau",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/desserts/petitgatou.jpg",
      price: 8.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 3.99),
      ],
    ),
    Food(
      name: "Torta de morango",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/desserts/tortamorango.jpg",
      price: 8.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 3.99),
      ],
    ),

    //drinks
    Food(
      name: "Água",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/drinks/agua.jpg",
      price: 8.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 3.99),
      ],
    ),
    Food(
      name: "Cerveja",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/drinks/cerveja.jpg",
      price: 8.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 3.99),
      ],
    ),
    Food(
      name: "Chá",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/drinks/bungas.jpg",
      price: 8.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 3.99),
      ],
    ),
    Food(
      name: "Refrigerante",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/drinks/refrigerante.jpg",
      price: 8.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 3.99),
      ],
    ),

    Food(
      name: "Suco",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/drinks/suco.jpg",
      price: 8.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 3.99),
      ],
    ),

    //sides
    Food(
      name: "Fritas",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/sides/fritas.png",
      price: 8.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 3.99),
      ],
    ),
    Food(
      name: "Fritas com bacon",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/sides/fritasbacon.png",
      price: 8.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 3.99),
      ],
    ),
    Food(
      name: "Mini pizza",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/sides/minipizza.png",
      price: 8.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 3.99),
      ],
    ),
    Food(
      name: "Onion Rings",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/sides/onionrings.jpg",
      price: 8.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Queijo extra", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Hambúrguer", price: 3.99),
      ],
    ),

    Food(
      name: "Mini Pizza Redonda",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/sides/pizzaminiredonda.jpg",
      price: 8.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 3.99),
      ],
    ),
  ];
  /*

      getters

      */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  /*

      operations

  */

  // user cart
  final List<CartItem> _cart = [];

// add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      //check if the food items are the same
      bool isSameFood = item.food == food;

      //check if the list of selected addons are the same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    //if item already exists,incrtease its quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    //otherwise, add a new cart item to the cart
    else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }

    notifyListeners();
  }

  // get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }

    return total;
  }

  // get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  //clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  /*

      helpers

      */

// generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln('Aqui\'esta seu pedido.');
    receipt.writeln();

    // format the date to include up to seconds only
    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("----------");

    for (final cartitem in _cart) {
      receipt.writeln(
          "${cartitem.quantity} x ${cartitem.food.name} -${_formatPrice(cartitem.food.price)}");
      if (cartitem.selectedAddons.isEmpty) {
        receipt.writeln(
            " Complementos: ${_formatAddons(cartitem.selectedAddons)}");
      }
      receipt.writeln();
    }

    receipt.writeln("----------");
    receipt.writeln();
    receipt.writeln("Total de itens: ${getTotalItemCount()}");
    receipt.writeln("Preço total: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }

  // format double value into 5money
  String _formatPrice(double price) {
    return '\$${price.toStringAsFixed(2)}';
  }

  // format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => '${addon.name} (${_formatPrice(addon.price)})')
        .join(', ');
  }
}
// Outros itens de menu (saladas, acompanhamentos, sobremesas, bebidas)

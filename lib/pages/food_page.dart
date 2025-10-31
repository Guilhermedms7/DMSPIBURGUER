import 'package:flutter/material.dart';
import 'package:piburguer/components/my_button.dart';
import 'package:piburguer/models/restaurant.dart';
import 'package:provider/provider.dart';
import '../models/food.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};

  FoodPage({
    super.key,
    required this.food,
  }) {
    //initialize addons to be false
    for (Addon addon in food.availableAddons) {
      selectedAddons[addon] = false;
    }
  }
  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  //method to add to cart
  void addToCart(Food food, Map<Addon, bool> selectedAddons) {
    //close the current food page to fo back to menu
    Navigator.pop(context);

    //format the selected addons

    List<Addon> currentlySelectedAddons = [];
    for (Addon addon in widget.food.availableAddons) {
      if (widget.selectedAddons[addon] == true) {
        currentlySelectedAddons.add(addon);
      }
    }
    //add to cart
    context.read<Restaurant>().addToCart(food, currentlySelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //scaffold ui
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                //food image
                Image.asset(
                    widget.food.imagePath), // Exibe a imagem do alimento

                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //nome comida
                      Text(
                        widget.food.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),

                      //valor food price
                      Text(
                        '\$${widget.food.price}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Theme.of(context).colorScheme.primary),
                      ),

                      const SizedBox(height: 10),

                      //descricao comida
                      Text(
                        widget.food.description,
                      ),

                      const SizedBox(height: 10),

                      Text(
                        "Complementos",
                        style: TextStyle(
                          color: Theme.of(context)
                              .colorScheme
                              .inversePrimary, // Corrigido para o uso correto de colorScheme
                          fontSize: 16,
                          fontWeight:
                              FontWeight.bold, // Corrigido para 'fontWeight'
                        ),
                      ),

                      const SizedBox(height: 10),

                      Divider(color: Theme.of(context).colorScheme.secondary),

                      const SizedBox(height: 10),

                      //addons
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Theme.of(context).colorScheme.secondary),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.zero,
                          itemCount: widget.food.availableAddons.length,
                          itemBuilder: (context, index) {
                            // get individuak addon
                            Addon addon = widget.food.availableAddons[index];

                            //return checkbox
                            return CheckboxListTile(
                              title: Text(addon.name),
                              subtitle: Text(
                                '\$${addon.price}',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                              value: widget.selectedAddons[addon],
                              onChanged: (bool? value) {
                                setState(() {
                                  widget.selectedAddons[addon] = value!;
                                });
                              },
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),

                //button do carrinho

                MyButton(
                  onTap: () => addToCart(widget.food, widget.selectedAddons),
                  text: "Adicionar ao carrinho",
                ),

                const SizedBox(height: 25),
              ],
            ),
          ),
        ),

        //back button
        SafeArea(
          child: Opacity(
            opacity: 0.6,
            child: Container(
              margin: const EdgeInsets.only(left: 25),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios_rounded),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

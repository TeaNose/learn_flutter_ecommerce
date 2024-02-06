import 'package:ecommerce_tutorial_apps/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: "Shoe A",
        price: "200",
        imagePath: 'lib/images/sneaker1.png',
        description: 'Super shoes for your daily activites'),
    Shoe(
        name: "Shoe B",
        price: "300",
        imagePath: "lib/images/sneaker2.png",
        description: "Shoes for your sport activity"),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}

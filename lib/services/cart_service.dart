import 'package:flutter/material.dart';
import '../models/tour.dart';
import '../models/cart_item.dart';

class CartService with ChangeNotifier {
  final List<CartItem> _items = [];

  List<CartItem> get items => _items;

  void addToCart(Tour tour) {
    _items.add(CartItem(tour: tour, quantity: 1));
    notifyListeners();
  }

  void removeFromCart(CartItem item) {
    _items.remove(item);
    notifyListeners();
  }
}

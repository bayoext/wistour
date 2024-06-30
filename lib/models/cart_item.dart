import 'tour.dart';

class CartItem {
  final Tour tour;
  int quantity;

  CartItem({required this.tour, this.quantity = 1});
}

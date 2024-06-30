import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart_item.dart';
import '../services/cart_service.dart';

class CartItemCard extends StatelessWidget {
  final CartItem cartItem;

  CartItemCard({required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(cartItem.tour.image),
        title: Text(cartItem.tour.name),
        subtitle: Text('Quantity: ${cartItem.quantity}'),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: () {
            context.read<CartService>().removeFromCart(cartItem);
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../models/tour.dart';
import '../services/cart_service.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatelessWidget {
  final Tour tour;

  DetailScreen({required this.tour});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tour.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(tour.image),
            SizedBox(height: 10),
            Text(
              tour.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(tour.description),
            SizedBox(height: 10),
            Text('Price: \$${tour.price.toStringAsFixed(2)}'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.read<CartService>().addToCart(tour);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Added to cart')),
                );
              },
              child: Text('Buy Ticket'),
            ),
          ],
        ),
      ),
    );
  }
}

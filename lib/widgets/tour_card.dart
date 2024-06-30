import 'package:flutter/material.dart';
import '../models/tour.dart';

class TourCard extends StatelessWidget {
  final Tour tour;

  TourCard({required this.tour});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(tour.image),
        title: Text(tour.name),
        subtitle: Text(tour.description),
      ),
    );
  }
}

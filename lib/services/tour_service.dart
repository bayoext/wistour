import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/tour.dart';

class TourService {
  final CollectionReference tourCollection = FirebaseFirestore.instance.collection('tours');

  Future<List<Tour>> getTours() async {
    try {
      QuerySnapshot snapshot = await tourCollection.get();
      return snapshot.docs.map((doc) => Tour.fromMap(doc.data() as Map<String, dynamic>)).toList();
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}

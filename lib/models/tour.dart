class Tour {
  final String id;
  final String name;
  final String description;
  final double price;
  final String image;

  Tour({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });

  factory Tour.fromMap(Map<String, dynamic> data) {
    return Tour(
      id: data['id'],
      name: data['name'],
      description: data['description'],
      price: data['price'],
      image: data['image'], // Pastikan field 'image' ada di data map
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'image': image, // Pastikan field 'image' ada di data map
    };
  }
}

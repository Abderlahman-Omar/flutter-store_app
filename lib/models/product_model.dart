class ProductModel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  final RatingModel? rating;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    this.rating,
  });

  factory ProductModel.fromJson(Map<String, dynamic> jsonData) {
    return ProductModel(
      id: jsonData['id'] is int ? jsonData['id'] : int.parse(jsonData['id']),
      title: jsonData['title'],
      price: jsonData['price'] is double
          ? jsonData['price']
          : double.parse(jsonData['price'].toString()),
      description: jsonData['description'],
      category: jsonData['category'],
      image: jsonData['image'],
      rating: jsonData['rating'] != null
          ? RatingModel.fromJson(jsonData['rating'])
          : null,
    );
  }
}

class RatingModel {
  final double rate;
  final int count;

  RatingModel({
    required this.rate,
    required this.count,
  });

  factory RatingModel.fromJson(Map<String, dynamic> jsonData) {
    return RatingModel(
      rate: jsonData['rate'] is double
          ? jsonData['rate']
          : double.parse(jsonData['rate'].toString()),
      count: jsonData['count'] is int
          ? jsonData['count']
          : int.parse(jsonData['count']),
    );
  }
}

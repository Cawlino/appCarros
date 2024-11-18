import 'seller.dart';

class Car {
  final String id;
  final String brand;
  final String model;
  final int year;
  final double price;
  final String imageUrl;
  final Seller seller;

  Car({
    required this.id,
    required this.brand,
    required this.model,
    required this.year,
    required this.price,
    required this.imageUrl,
    required this.seller,
  });
}

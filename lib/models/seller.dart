import 'car.dart';

class Seller {
  final String id;
  final String name;
  final String phone;
  final String email;
  List<Car> cars;

  Seller({
    required this.id,
    required this.name,
    required this.phone,
    required this.email,
    this.cars = const [],
  });
}

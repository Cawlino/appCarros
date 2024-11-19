import 'package:flutter_test/flutter_test.dart';
import 'package:projeto/models/seller.dart';
import 'package:projeto/models/car.dart';

void main() {
  group('Seller Model Tests', () {
    test('Criação de vendedor com dados válidos', () {
      final seller = Seller(
        id: '1',
        name: 'João Silva',
        phone: '(11) 9999-9999',
        email: 'joao@exemplo.com',
      );

      expect(seller.id, '1');
      expect(seller.name, 'João Silva');
      expect(seller.phone, '(11) 9999-9999');
      expect(seller.email, 'joao@exemplo.com');
      expect(seller.cars, isEmpty);
    });

    test('Adicionar carros ao vendedor', () {
      final seller = Seller(
        id: '1',
        name: 'João Silva',
        phone: '(11) 9999-9999',
        email: 'joao@exemplo.com',
      );

      final car = Car(
        id: '1',
        brand: 'Toyota',
        model: 'Corolla',
        year: 2022,
        price: 120000.00,
        imageUrl: 'https://exemplo.com/imagem.jpg',
        seller: seller,
      );

      seller.cars.add(car);

      expect(seller.cars.length, 1);
      expect(seller.cars.first, car);
    });
  });
}

import 'package:flutter_test/flutter_test.dart';
import 'package:projeto/models/car.dart';
import 'package:projeto/models/seller.dart';

void main() {
  group('Car Model Tests', () {
    final testSeller = Seller(
      id: '1',
      name: 'Revendedora Teste',
      phone: '(11) 9999-9999',
      email: 'teste@exemplo.com',
    );

    test('Criação de carro com dados válidos', () {
      final car = Car(
        id: '1',
        brand: 'Toyota',
        model: 'Corolla',
        year: 2022,
        price: 120000.00,
        imageUrl: 'https://exemplo.com/imagem.jpg',
        seller: testSeller,
      );

      expect(car.id, '1');
      expect(car.brand, 'Toyota');
      expect(car.model, 'Corolla');
      expect(car.year, 2022);
      expect(car.price, 120000.00);
      expect(car.seller, testSeller);
    });

    test('Criação de carro com preço negativo deve lançar erro', () {
      expect(
        () => Car(
          id: '2',
          brand: 'Honda',
          model: 'Civic',
          year: 2021,
          price: -1000,
          imageUrl: 'https://exemplo.com/imagem.jpg',
          seller: testSeller,
        ),
        throwsAssertionError,
      );
    });
  });
}

// Arquivo: test/screens/add_car_screen_test.dart

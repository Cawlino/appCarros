import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:projeto/screens/add_car_screen.dart';

void main() {
  group('AddCarScreen Tests', () {
    testWidgets('Validação de formulário', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: AddCarScreen(),
        ),
      );

      await tester.tap(find.text('Salvar'));
      await tester.pump();

      expect(find.text('Por favor, insira a marca'), findsOneWidget);
      expect(find.text('Por favor, insira o modelo'), findsOneWidget);
      expect(find.text('Por favor, insira o ano'), findsOneWidget);
      expect(find.text('Por favor, insira o preço'), findsOneWidget);
    });

    testWidgets('Preenchimento e salvamento de formulário',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: AddCarScreen(),
        ),
      );

      await tester.enterText(find.byType(TextFormField).at(0), 'Toyota');
      await tester.enterText(find.byType(TextFormField).at(1), 'Corolla');
      await tester.enterText(find.byType(TextFormField).at(2), '2022');
      await tester.enterText(find.byType(TextFormField).at(3), '120000');

      await tester.tap(find.text('Salvar'));
      await tester.pump();

      expect(find.text('Por favor, insira a marca'), findsNothing);
      expect(find.text('Por favor, insira o modelo'), findsNothing);
      expect(find.text('Por favor, insira o ano'), findsNothing);
      expect(find.text('Por favor, insira o preço'), findsNothing);
    });
  });
}

import 'package:flutter/material.dart';
import '../widgets/drawer_menu.dart';

class CarListScreen extends StatelessWidget {
  const CarListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catálogo de Carros'),
      ),
      drawer: const DrawerMenu(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add-car');
        },
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: const Icon(Icons.car_rental),
              title: Text('Carro ${index + 1}'),
              subtitle: Text('R\$ ${(50000 + index * 10000).toString()}'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Implementar detalhes do carro
              },
            ),
          );
        },
      ),
    );
  }
}

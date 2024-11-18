import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'CarStore',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            leading: const Icon(Icons.car_rental),
            title: const Text('Catálogo'),
            onTap: () {
              Navigator.pushNamed(context, '/cars');
            },
          ),
          ListTile(
            leading: const Icon(Icons.add),
            title: const Text('Adicionar Carro'),
            onTap: () {
              Navigator.pushNamed(context, '/add-car');
            },
          ),
        ],
      ),
    );
  }
}

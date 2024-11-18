import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/car_list_screen.dart';
import 'screens/add_car_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CarStore',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/cars': (context) => const CarListScreen(),
        '/add-car': (context) => const AddCarScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

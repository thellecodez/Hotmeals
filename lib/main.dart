import 'package:flutter/material.dart';
import 'package:hotmeals/screens/order/Delivery.dart';

// void main() {
//   runApp(const MyApp());
// }

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Hotmeals',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: "onboarding",
        routes: {
          "onboarding": (BuildContext context) => const Delivery(),
        },
        home: const SafeArea(
          child: Scaffold(),
        ));
  }
}

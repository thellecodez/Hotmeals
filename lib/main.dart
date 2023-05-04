import 'package:flutter/material.dart';
import 'package:hotmeals/screens/order/Delivery.dart';
import 'package:hotmeals/screens/payment/CardPayment.dart';
import 'package:hotmeals/screens/payment/Payment.dart';

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
        initialRoute: "card",
        routes: {
          "delivery": (BuildContext context) => const Delivery(),
          "payment": (BuildContext context) => const Payment(),
          "card": (BuildContext context) => const CardPayment(),
        },
        home: const SafeArea(
          child: Scaffold(),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotmeals/screens/home/SplashScreen.dart';
import 'package:hotmeals/screens/order/Delivery.dart';
import 'package:hotmeals/screens/payment/CardPayment.dart';
import 'package:hotmeals/screens/payment/Cart.dart';
import 'package:hotmeals/screens/payment/Payment.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Set status bar color to transparent
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));

    return MaterialApp(
        title: 'Hotmeals',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: "splashscreen",
        routes: {
          "splashscreen": (BuildContext context) => const SplashScreen(),
          "delivery": (BuildContext context) => const Delivery(),
          "payment": (BuildContext context) => const Payment(),
          "card": (BuildContext context) => const CardPayment(),
          "cart": (BuildContext context) => const Cart(),
        },
        home: const SafeArea(
          child: Scaffold(),
        ));
  }
}

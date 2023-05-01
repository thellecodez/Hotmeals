import 'package:flutter/material.dart';

class Delivery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DeliveryScreen(),
    );
  }
}

class DeliveryScreen extends StatefulWidget {
  @override
  _DeliveryScreen createState() => new _DeliveryScreen();
}

class _DeliveryScreen extends State<DeliveryScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF1EA955),
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 10,
              child: Text(
                'SA',
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [],
            ),
            actions: <Widget>[],
          ),
          body: Container(
            child: Column(children: []),
          ),
        ),
      ),
    );
  }
}

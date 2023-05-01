// ignore: file_names
import 'package:flutter/material.dart';

class Delivery extends StatelessWidget {
  const Delivery({super.key});

  @override
  Widget build(BuildContext context) {
    return DeliveryScreen();
  }
}

class DeliveryScreen extends StatefulWidget {
  const DeliveryScreen({super.key});

  @override
  _DeliveryScreen createState() => _DeliveryScreen();
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
          backgroundColor: const Color(0xFFffffff),
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: const Color(0xFFFFFFFF),
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {},
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Checkout',
                    style: TextStyle(
                        color: Colors.black, fontSize: 17, fontFamily: 'Inter'))
              ],
            ),
            actions: const <Widget>[],
          ),
          body: Column(children: [
            Padding(
                padding: const EdgeInsets.fromLTRB(26, 0, 26, 0),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                          padding: EdgeInsets.symmetric(
                              vertical:
                                  18), //apply padding horizontal or vertical only
                          child: Text(
                            'Delivery',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontFamily: 'Inter'),
                          )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Address Details',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontFamily: 'Inter'),
                      ),
                      Text(
                        'Change',
                        style: TextStyle(
                            color: Color(0xFFF5440C),
                            fontSize: 17,
                            fontFamily: 'Inter'),
                      ),
                    ],
                  ),
                  Center(
                      child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 32, 0, 6),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 0.2,
                              offset: Offset(0.5, 0.5), // Shadow position
                            ),
                          ],
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      'Trinity hostel',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                          fontFamily: 'Inter'),
                                    ),
                                    Text(
                                      'Icon',
                                      style: TextStyle(
                                          color: Color(0xFFF5440C),
                                          fontSize: 17,
                                          fontFamily: 'Inter'),
                                    ),
                                  ],
                                ),
                                const Padding(
                                    padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                                    child: Center(
                                        child: Divider(
                                      height: 0,
                                      thickness: 1,
                                      endIndent: 0,
                                      color: Color(0xffADADAF),
                                    ))),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      'Trinity hostel',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                          fontFamily: 'Inter'),
                                    ),
                                    Text(
                                      'Icon',
                                      style: TextStyle(
                                          color: Color(0xFFF5440C),
                                          fontSize: 17,
                                          fontFamily: 'Inter'),
                                    ),
                                  ],
                                ),
                              ],
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Container(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Delivery Method',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontFamily: 'Inter'),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 5, 0, 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 0.2,
                              offset: Offset(0.5, 0.5), // Shadow position
                            ),
                          ],
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [],
                                ),
                                const Padding(
                                    padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                                    child: Center(
                                        child: Divider(
                                      height: 0,
                                      thickness: 1,
                                      endIndent: 0,
                                      color: Color(0xffADADAF),
                                    ))),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [],
                                ),
                              ],
                            )),
                      )
                    ],
                  ))
                ])),
          ]),
        ),
      ),
    );
  }
}

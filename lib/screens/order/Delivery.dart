// ignore: file_names
// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class Delivery extends StatelessWidget {
  const Delivery({super.key});

  @override
  Widget build(BuildContext context) {
    return const DeliveryScreen();
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

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return const Color(0xffF5440C);
    }

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
              title: const Text('Checkout',
                  style: TextStyle(
                      color: Colors.black, fontSize: 17, fontFamily: 'Inter'))),
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
                        margin: const EdgeInsets.fromLTRB(0, 32, 0, 6),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(
                                  0.3), // use a grey color with some opacity
                              blurRadius: 6,
                              offset: const Offset(
                                  0, 3), // add some vertical offset
                              spreadRadius:
                                  0.1, // add a slight spread radius to the shadow
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
                                          fontSize: 14,
                                          fontFamily: 'Inter'),
                                    ),
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.pink,
                                      size: 24.0,
                                      semanticLabel:
                                          'Text to announce in accessibility modes',
                                    )
                                  ],
                                ),
                                const Padding(
                                    padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
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
                                          fontSize: 14,
                                          fontFamily: 'Inter'),
                                    ),
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.pink,
                                      size: 24.0,
                                      semanticLabel:
                                          'Text to announce in accessibility modes',
                                    )
                                  ],
                                ),
                              ],
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Delivery Method',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Inter'),
                          )
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              blurRadius: 6,
                              offset: const Offset(0, 3),
                              spreadRadius: 0.1,
                            ),
                          ],
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Checkbox(
                                      checkColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      fillColor:
                                          MaterialStateProperty.resolveWith(
                                              getColor),
                                      value: isChecked,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          isChecked = value!;
                                        });
                                      },
                                    ),
                                    const Text(
                                      'Door Delivery',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Inter'),
                                    ),
                                  ],
                                ),
                                const Padding(
                                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                    child: Center(
                                        child: Divider(
                                      height: 0,
                                      thickness: 1,
                                      endIndent: 0,
                                      color: Color(0xffADADAF),
                                    ))),
                                Row(
                                  children: [
                                    Checkbox(
                                      checkColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      fillColor:
                                          MaterialStateProperty.resolveWith(
                                              getColor),
                                      value: isChecked,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          isChecked = value!;
                                        });
                                      },
                                    ),
                                    const Text(
                                      'Pick up',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Inter'),
                                    ),
                                  ],
                                )
                              ],
                            )),
                      ),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(0, 49, 0, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Sub Total',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Inter'),
                              ),
                              Text(
                                '1130',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Inter'),
                              ),
                            ],
                          )),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(0, 17, 0, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Delivery cost',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Inter'),
                              ),
                              Text(
                                '500',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Inter'),
                              ),
                            ],
                          )),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(0, 17.0, 0, 11.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Total',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Inter'),
                              ),
                              Text(
                                '1630',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 14.0,
                                    fontFamily: 'Inter'),
                              ),
                            ],
                          )),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xffF5440C)),
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(double.infinity, 50.0)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                          ),
                          child: const Text('Proceed to payment'),
                        ),
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

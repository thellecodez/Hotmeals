// ignore: file_names
import 'package:flutter/material.dart';

class CardPayment extends StatefulWidget {
  const CardPayment({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CardState createState() => _CardState();
}

class _CardState extends State<CardPayment> {
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
      child: Scaffold(
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
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(26, 0, 26, 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                          padding: EdgeInsets.symmetric(
                              vertical:
                                  18), //apply padding horizontal or vertical only
                          child: Text(
                            'Payment - Card',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontFamily: 'Inter'),
                          )),
                    ],
                  ),
                  Center(
                    child: Column(children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 32, 0, 6),
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
                                      'Add new Card',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Inter'),
                                    ),
                                    Icon(
                                      Icons.add,
                                      color: Colors.pink,
                                      size: 24.0,
                                      semanticLabel: '',
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
                            'Cards',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Inter'),
                          )
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 9, 0, 6),
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
                                  children: [
                                    Image.asset(
                                      "assets/visa.png",
                                      width: 80.0,
                                    ),
                                    Column(
                                      children: const [
                                        Text(
                                          '**** **** **** 45436',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontFamily: 'Inter'),
                                        ),
                                        Text(
                                          'Visa',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 20.0,
                                              fontFamily: 'Inter'),
                                        ),
                                      ],
                                    ),
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
                                  ],
                                ),
                              ],
                            )),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 9, 0, 6),
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
                                  children: [
                                    Image.asset(
                                      "assets/mastercard.png",
                                      width: 80.0,
                                    ),
                                    Column(
                                      children: const [
                                        Text(
                                          '**** **** **** 45436',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontFamily: 'Inter'),
                                        ),
                                        Text(
                                          'Master Card',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 20.0,
                                              fontFamily: 'Inter'),
                                        ),
                                      ],
                                    ),
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
                                  ],
                                ),
                              ],
                            )),
                      ),
                    ]),
                  ),
                  Container(
                    margin: const EdgeInsets.all(20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Total',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.0,
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
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xffF5440C)),
                        minimumSize: MaterialStateProperty.all<Size>(
                            const Size(double.infinity, 50.0)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                      child: const Text('Place order'),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

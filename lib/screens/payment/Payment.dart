// ignore: file_names
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
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
        backgroundColor: const Color(0xFFFFFFFF),
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
            padding: const EdgeInsets.fromLTRB(34, 0, 34, 0),
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
                          'Payment',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontFamily: 'Inter'),
                        )),
                  ],
                ),
                const SizedBox(height: 50.0),
                Row(
                  children: const [
                    Text(
                      'Payment Method',
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(
                            0.3), // use a grey color with some opacity
                        blurRadius: 6,
                        offset: const Offset(0, 3), // add some vertical offset
                        spreadRadius:
                            0.1, // add a slight spread radius to the shadow
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
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                fillColor:
                                    MaterialStateProperty.resolveWith(getColor),
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                },
                              ),
                              const Text(
                                'Card',
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
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                fillColor:
                                    MaterialStateProperty.resolveWith(getColor),
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                },
                              ),
                              const Text(
                                'Transfer',
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
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                fillColor:
                                    MaterialStateProperty.resolveWith(getColor),
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                },
                              ),
                              const Text(
                                'Pay on Delivery',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Inter'),
                              ),
                            ],
                          ),
                        ],
                      )),
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
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xffF5440C)),
                      minimumSize: MaterialStateProperty.all<Size>(
                          const Size(double.infinity, 50.0)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                    child: const Text('Confirm'),
                  ),
                )
              ],
            ),
          )
        ]),
      )),
    );
  }
}

// ignore: file_names
import 'package:flutter/material.dart';
import 'package:hotmeals/screens/auth/Login.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _Signup createState() => _Signup();
}

class _Signup extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          height: 46,
        ),
        Center(
            child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/plate.png'),
                    fit: BoxFit.contain,
                  ),
                ),
                child: const SizedBox(
                  width: 103,
                  height: 121,
                ))),
        const Center(
            child: Text(
          "Sign up",
          style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
        )),
        Expanded(
            child: Padding(
                padding: const EdgeInsets.fromLTRB(40.0, 13.0, 40.0, 0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Email address",
                              style: TextStyle(fontSize: 15.0)),
                          Container(
                              margin: const EdgeInsets.only(top: 10.0),
                              child: TextField(
                                  decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey[200],
                                hintText: 'Enter your email address',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide: BorderSide.none,
                                ),
                              )))
                        ],
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Password",
                              style: TextStyle(fontSize: 15.0)),
                          Container(
                              margin: const EdgeInsets.only(top: 10.0),
                              child: TextField(
                                  decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey[200],
                                hintText: 'Enter your password',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide: BorderSide.none,
                                ),
                              )))
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
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
                              child: const Text('Sign up'),
                            ),
                            Container(
                                margin: const EdgeInsets.only(top: 20.0),
                                child: Row(
                                  children: [
                                    const Text("Don't you have an account?"),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Login()),
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.transparent,
                                        elevation: 0.0,
                                      ),
                                      child: Container(
                                          margin:
                                              const EdgeInsets.only(left: 10),
                                          child: const Text(
                                            'Sign in',
                                            style: TextStyle(
                                                color: Color(0xFFff4500)),
                                          )),
                                    )
                                  ],
                                )),
                            Container(
                              margin: const EdgeInsets.only(top: 20.0),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    padding: const EdgeInsets.all(16.0),
                                    backgroundColor: const Color(0xFF4158AA)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/g.png',
                                      width: 24.0,
                                      height: 24.0,
                                    ),
                                    const SizedBox(width: 16.0),
                                    const Text('Continue with Google'),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ])))
      ]),
    );
  }
}

// ignore_for_file: prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";
import "package:test_login_screen/room_screen.dart";

class SwitchAccountScreenSecond extends StatefulWidget {
  const SwitchAccountScreenSecond({super.key});

  @override
  State<SwitchAccountScreenSecond> createState() =>
      _SwitchAccountScreenSecondState();
}

class _SwitchAccountScreenSecondState extends State<SwitchAccountScreenSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 168),
                  child: Container(
                    height: 49,
                    width: 182,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/Instagram Logo.png'))),
                  ),
                ),
              ),
              SizedBox(
                height: 262,
                width: 343,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 39),
                      child: Card(
                        child: TextField(
                          decoration: InputDecoration(
                            label: Text('Enter your User Id'),
                            // border: OutlineInputBorder(
                            //     borderRadius: BorderRadius.circular(12))
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 12.0),
                      child: Card(
                        child: TextField(
                          decoration: InputDecoration(
                            label: Text('Enter your Password'),
                            //filled: true,
                            //fillColor: Color.fromARGB(255, 101, 94, 94)

                            // border: OutlineInputBorder(
                            //     borderRadius: BorderRadius.circular(12))
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forgot password?',
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 44,
                  width: 307,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RoomScreen()),
                            (route) => false);
                      },
                      child: const Text(
                        'Log In',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 24),
                child: Text('------- or -------'),
              ),
              SizedBox(
                height: 100,
                width: double.infinity,
                //color: Colors.amber,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/Face.jpg'))),
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text('LogIn With Facebook'))
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
                width: double.infinity,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account? '),
                      Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 49,
          width: 84,
          decoration: BoxDecoration(
              border:
                  Border.all(color: const Color.fromARGB(115, 208, 198, 198))),
          child: const Center(
            child: Text(
              'Instagram от Facebook',
              style: TextStyle(color: Color.fromARGB(115, 208, 198, 198)),
            ),
          ),
        ));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      body: Column(
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
          Container(
            height: 262,
            width: 343,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 39),
                  child: Card(
                    child: TextField(
                      decoration: InputDecoration(
                          label: const Text('Enter your User Id'),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Card(
                    child: TextField(
                      decoration: InputDecoration(
                          label: const Text('Enter your User Id'),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12))),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot password',
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
                  color: Colors.blue, borderRadius: BorderRadius.circular(10)),
              child: TextButton(
                  onPressed: () {},
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
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Container(
                  height: 44,
                  width: 307,
                  decoration: BoxDecoration(
                    //color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'LogIn With FaceBook ',
                        style: TextStyle(color: Colors.blue),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:test_login_screen/switch_account_screen.dart';

class LoginScreenFirst extends StatefulWidget {
  const LoginScreenFirst({super.key});

  @override
  State<LoginScreenFirst> createState() => _LoginScreenFirstState();
}

class _LoginScreenFirstState extends State<LoginScreenFirst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 200, left: 25, right: 25),
            child: Center(
              child: Container(
                height: 98,
                width: 182,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/Instagram Logo.png'))),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 52, left: 44, right: 44),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/Oval.png'),
            ),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Jaco_W',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
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
          TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SwitchAccountScreenSecond()),
                );
              },
              child: Text(
                'Switch Account',
                style: TextStyle(color: Colors.blue.shade300),
              ))
        ],
      ),
      bottomNavigationBar: Container(
        height: 49,
        width: 84,
        decoration: BoxDecoration(
            border:
                Border.all(color: const Color.fromARGB(115, 208, 198, 198))),
        child: const Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don\'t have an account? '),
              Text(
                'Sign Up',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}

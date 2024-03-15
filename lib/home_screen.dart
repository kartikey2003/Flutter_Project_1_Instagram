import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 145.0),
          child: Row(
            children: [
              const Icon(Icons.lock_outline),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Jaco_W'),
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.expand_more_rounded))
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 403,
            width: double.infinity,
            color: Colors.black,
          ),
          const DefaultTabController(
              length: 2,
              child: TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.apps_sharp),
                  )
                ],
              ))
        ],
      ),
    );
  }
}

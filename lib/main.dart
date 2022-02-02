import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/action_button.dart';
import 'package:flutter_expandable_fab/expandable_fab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expandable FAB'),
        centerTitle: true,
      ),
      floatingActionButton: ExpandableFab(
          children: [
            ActionButton(
                icon: const Icon(Icons.person, color: Colors.white,),
              onPressed: () {
                  print('person');
              },
            ),
            ActionButton(
              icon: const Icon(Icons.settings, color: Colors.white,),
              onPressed: () {
                print('settings');
              },
            ),
            ActionButton(
              icon: const Icon(Icons.add, color: Colors.white,),
              onPressed: () {
                print('add');
              },
            ),
          ],
          distance: 120),
    );
  }
}


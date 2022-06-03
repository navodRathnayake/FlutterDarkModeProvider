import 'package:darkmodetest/Pages/SettingsPage.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('test app title'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => const Settings(
                          pageTitle: 'Settings Page',
                        ))));
              },
              icon: const Icon(Icons.settings)),
        ],
      ),
      body: Container(),
    );
  }
}

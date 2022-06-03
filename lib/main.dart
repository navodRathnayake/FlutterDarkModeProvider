import 'package:darkmodetest/Pages/MyHomepage.dart';
import 'package:darkmodetest/Pages/SettingsPage.dart';
import 'package:flutter/material.dart';
import 'utils/Theme.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppUI(),
      builder: (BuildContext context, Widget? chlid) {
        return MaterialApp(
          title: 'test app',
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode: Provider.of<AppUI>(context).themeModeState,
          home: const MyHomePage(),
        );
      },
    );
  }
}

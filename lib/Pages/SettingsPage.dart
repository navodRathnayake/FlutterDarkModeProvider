import 'package:darkmodetest/utils/Theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Settings extends StatefulWidget {
  final String pageTitle;
  const Settings({Key? key, required this.pageTitle}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.pageTitle),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          )
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.dark_mode),
            title: Text('Dark Mode ON / OFF'),
            subtitle: const Text('Change Your UI theme'),
            trailing: Switch(
                value: Provider.of<AppUI>(context).isOn(),
                onChanged: (value) {
                  Provider.of<AppUI>(context, listen: false)
                      .toggleAction(value);
                }),
          ),
          const Divider(),
        ],
      ),
    );
  }
}

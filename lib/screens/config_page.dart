import 'package:flutter/material.dart';
import 'package:ocean_tokyo_app/components/Appbar.dart';
import 'package:ocean_tokyo_app/components/drawer.dart';

class ConfigPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarComponent(title: Text('設定')),
      drawer: DrawerComponent(),
      body: const Center(
        child: Text('設定'),
      ),
    );
  }
}

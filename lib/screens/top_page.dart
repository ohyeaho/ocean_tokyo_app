import 'package:flutter/material.dart';
import 'package:ocean_tokyo_app/components/Appbar.dart';
import 'package:ocean_tokyo_app/components/drawer.dart';

class TopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarComponent(title: Text('OCEAN TOKYO App')),
      drawer: DrawerComponent(),
      body: const Center(
        child: Text('OCEAN TOKYO'),
      ),
    );
  }
}

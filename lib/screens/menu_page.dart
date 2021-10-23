import 'package:flutter/material.dart';
import 'package:ocean_tokyo_app/components/Appbar.dart';
import 'package:ocean_tokyo_app/components/drawer.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarComponent(title: Text('Menu')),
      drawer: DrawerComponent(),
      body: const Center(
        child: Text('Menu'),
      ),
    );
  }
}

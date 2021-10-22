import 'package:flutter/material.dart';
import 'package:ocean_tokyo_app/components/drawer.dart';

class TopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OCEAN TOKYO App'),
      ),
      drawer: DrawerComponent(),
    );
  }
}

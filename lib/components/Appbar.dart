import 'package:flutter/material.dart';
import 'package:ocean_tokyo_app/screens/card_page.dart';

class AppbarComponent extends StatelessWidget implements PreferredSizeWidget {
  final title;
  final Size preferredSize;

  AppbarComponent({required this.title})
      : preferredSize = Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: title,
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CardPage()),
            );
          },
          icon: Icon(Icons.credit_card),
        ),
      ],
    );
  }
}

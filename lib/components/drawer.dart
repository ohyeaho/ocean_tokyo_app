import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class DrawerComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text(
              'Menu',
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            title: Text(
              'STYLE',
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
              ),
            ),
            onTap: () {
              // setState(() => _city = 'Honolulu, HI');
              // Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              'MEMBER',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
              ),
            ),
            onTap: () {
              // setState(() => _city = 'Dallas, TX');
              // Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              'MENU',
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
              ),
            ),
            onTap: () {
              // setState(() => _city = 'Seattle, WA');
              // Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              'SALON LIST',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
              ),
            ),
            onTap: () {
              // setState(() => _city = 'Tokyo, Japan');
              // Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              'COMPANY',
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
              ),
            ),
            onTap: () {
              // setState(() => _city = 'Tokyo, Japan');
              // Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              'PRESS',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
              ),
            ),
            onTap: () {
              // setState(() => _city = 'Tokyo, Japan');
              // Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              'RECRUIT',
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
              ),
            ),
            onTap: () {
              // setState(() => _city = 'Tokyo, Japan');
              // Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              'ONLINE STORE',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
              ),
            ),
            onTap: () {
              // setState(() => _city = 'Tokyo, Japan');
              // Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              'TOP',
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
              ),
            ),
            onTap: () {
              // setState(() => _city = 'Tokyo, Japan');
              // Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

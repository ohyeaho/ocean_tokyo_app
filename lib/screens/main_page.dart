import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ocean_tokyo_app/screens/config_page.dart';
import 'package:ocean_tokyo_app/screens/menu_page.dart';
import 'package:ocean_tokyo_app/screens/post_page.dart';
import 'package:ocean_tokyo_app/screens/staff_page.dart';
import 'package:ocean_tokyo_app/screens/top_page.dart';

final appRoutes = {
  '/top_page': (context) => TopPage(),
  '/menu_page': (context) => MenuPage(),
  '/post_page': (context) => PostPage(),
  '/staff_page': (context) => StaffPage(),
  '/config_page': (context) => ConfigPage(),
  // '/profile': (context) => Profile(),
  // '/home': (context) => HomePage(),
  // '/search_page': (context) => SearchPage(),
  // '/media': (context) => Media(),
  // '/media_page_new_post': (context) => MediaPageNewPost(),
};

class MainPage extends StatelessWidget {
  // final User user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    //   void onPressed(BuildContext context) async {
    //     final Size size = MediaQuery.of(context).size;
    //     double height = size.height;
    //     await showModalBottomSheet(
    //       useRootNavigator: true,
    //       backgroundColor: Colors.transparent,
    //       context: context,
    //       builder: (BuildContext context) {
    //         return Padding(
    //           padding: const EdgeInsets.only(bottom: 50),
    //           child: Container(
    //             height: height * 0.5,
    //             decoration: BoxDecoration(
    //                 color: Colors.grey.shade200,
    //                 borderRadius: BorderRadius.only(
    //                     topRight: Radius.circular(10.0),
    //                     topLeft: Radius.circular(10.0))),
    //             child: Column(
    //               // mainAxisAlignment: MainAxisAlignment.center,
    //               children: [
    //                 Padding(
    //                   padding: const EdgeInsets.only(top: 15, bottom: 10),
    //                   child: Center(
    //                     child: Text(
    //                       'スニーカーの出品・アパレルの出品\n質問や写真を投稿することができます。',
    //                       textAlign: TextAlign.center,
    //                       style: TextStyle(fontWeight: FontWeight.bold),
    //                     ),
    //                   ),
    //                 ),
    //                 Expanded(
    //                   child: Padding(
    //                     padding: const EdgeInsets.symmetric(
    //                         horizontal: 15.0, vertical: 2),
    //                     child: ElevatedButton(
    //                       onPressed: () {
    //                         //todo: ボタン処理
    //                       },
    //                       style: ElevatedButton.styleFrom(
    //                         primary: Colors.white,
    //                       ),
    //                       child: Row(
    //                         children: [
    //                           Container(
    //                             height: 40,
    //                             width: 50,
    //                             child: Image.asset('images/sn_buy.jpg'),
    //                           ),
    //                           SizedBox(width: 10),
    //                           Text(
    //                             'スニーカーを出品する',
    //                             style: TextStyle(
    //                               color: Colors.black,
    //                               fontWeight: FontWeight.bold,
    //                             ),
    //                           ),
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //                 Expanded(
    //                   child: Padding(
    //                     padding: const EdgeInsets.symmetric(
    //                         horizontal: 15.0, vertical: 2),
    //                     child: ElevatedButton(
    //                       onPressed: () {
    //                         //todo: ボタン処理
    //                       },
    //                       style: ElevatedButton.styleFrom(
    //                         primary: Colors.white,
    //                       ),
    //                       child: Row(
    //                         children: [
    //                           Container(
    //                             height: 40,
    //                             width: 50,
    //                             child: Image.asset('images/ap_buy.jpg'),
    //                           ),
    //                           SizedBox(width: 10),
    //                           Text(
    //                             'アパレルを出品する',
    //                             style: TextStyle(
    //                               color: Colors.black,
    //                               fontWeight: FontWeight.bold,
    //                             ),
    //                           ),
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //                 Expanded(
    //                   child: Padding(
    //                     padding: const EdgeInsets.symmetric(
    //                         horizontal: 15.0, vertical: 2),
    //                     child: ElevatedButton(
    //                       onPressed: () {
    //                         Navigator.push(
    //                           context,
    //                           MaterialPageRoute(
    //                             builder: (context) => NewPost(user),
    //                             fullscreenDialog: true,
    //                           ),
    //                         );
    //                       },
    //                       style: ElevatedButton.styleFrom(
    //                         primary: Colors.white,
    //                       ),
    //                       child: Row(
    //                         children: [
    //                           Container(
    //                             height: 40,
    //                             width: 50,
    //                             child: Image.asset('images/post.jpg'),
    //                           ),
    //                           SizedBox(width: 10),
    //                           Text(
    //                             '写真や文章を投稿する',
    //                             style: TextStyle(
    //                               color: Colors.black,
    //                               fontWeight: FontWeight.bold,
    //                             ),
    //                           ),
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //                 SizedBox(height: height * 0.01)
    //               ],
    //             ),
    //           ),
    //         );
    //       },
    //     );
    //   }

    return Scaffold(
      body: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.cut),
              label: 'Top',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.monetization_on),
              label: 'メニュー',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.perm_identity),
              label: 'スタッフ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: '設定',
            ),
          ],
          backgroundColor: Colors.blue,
          iconSize: 40,
          activeColor: Colors.white,
        ),
        tabBuilder: (context, index) {
          return CupertinoTabView(
            routes: appRoutes,
            builder: (context) {
              switch (index) {
                case 0:
                  return TopPage();
                  break;
                case 1:
                  return MenuPage();
                  break;
                case 2:
                  return PostPage();
                  break;
                  // return CupertinoTabView(
                  //   builder: (context) {
                  //     return CupertinoPageScaffold(
                  //         child: IconButton(
                  //             onPressed: () => onPressed(context),
                  //             icon: Icon(Icons.add_circle_outline)));
                  //   },
                  // );
                  break;
                case 3:
                  return StaffPage();
                  break;
                case 4:
                  return ConfigPage();
                  break;
              }
              return MainPage();
            },
          );
        },
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:ocean_tokyo_app/screens/config_page.dart';
// import 'package:ocean_tokyo_app/screens/menu_page.dart';
// import 'package:ocean_tokyo_app/screens/post_page.dart';
// import 'package:ocean_tokyo_app/screens/staff_page.dart';
// import 'package:ocean_tokyo_app/screens/top_page.dart';
//
// class MainPage extends StatefulWidget {
//   @override
//   _MainPageState createState() => _MainPageState();
// }
//
// class _MainPageState extends State<MainPage> {
//   int _selectedIndex = 0;
//
//   static final List<Widget> _widgetOptions = <Widget>[
//     TopPage(),
//     MenuPage(),
//     PostPage(),
//     StaffPage(),
//     ConfigPage(),
//   ];
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: _widgetOptions.elementAt(_selectedIndex),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.near_me),
//             label: 'Top',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.monetization_on),
//             label: 'メニュー',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.add_circle_outline),
//             label: '',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.perm_identity),
//             label: 'スタッフ',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//             label: '設定',
//           ),
//         ],
//         backgroundColor: Colors.blue,
//         iconSize: 40,
//         selectedFontSize: 12,
//         unselectedFontSize: 12,
//         type: BottomNavigationBarType.fixed,
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.white,
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }

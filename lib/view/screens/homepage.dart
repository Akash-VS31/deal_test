import 'package:deal_test/view/screens/screen1.dart';
import 'package:deal_test/view/screens/screen2.dart';
import 'package:deal_test/view/screens/screen3.dart';
import 'package:deal_test/view/screens/settingpage.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentselectedindex = 0;
  static List<Widget> _pages = <Widget>[
    Screen1(),
    Screen2(),
    SettingsPage(),
    Screen3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        elevation: 0,
      ),
      drawer: Drawer(
        child:Column(
          children: [
            DrawerHeader(child:
            Padding(padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.purple,
              radius: 50,
            ),
            )
            ),
            ListTile(
              leading: ImageIcon(
                  AssetImage('assets/images/man.png')
              ),
              title: Text('MEN'),
            ),
            Divider(),
            ListTile(
              leading: ImageIcon(
                  AssetImage('assets/images/woman.png')
              ),
              title: Text('WOMAN'),
            ),
            Divider(),
            ListTile(
              leading: ImageIcon(
                  AssetImage('assets/images/playtime.png')
              ),
              title: Text('KIDS'),
            ),
            Divider(),
            ListTile(
              leading: ImageIcon(
                  AssetImage('assets/images/sunglasses.png')
              ),
              title: Text('ACCESSORIES'),
            ),
            Divider(),
            ListTile(
              leading: ImageIcon(
                  AssetImage('assets/images/kitchen.png')
              ),
              title: Text('HOME AND KITCHEN'),
            ),
            Divider(),
            ListTile(
              leading: ImageIcon(
                AssetImage('assets/images/jewelry.png')
              ),
              title: Text('JEWELLERY'),
            ),
            Divider(),
          ],
        )
      ),
      body: _pages[_currentselectedindex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.purpleAccent,
          currentIndex: _currentselectedindex,
          onTap: (value) {
            setState(() {
              _currentselectedindex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.fire_extinguisher_sharp),
              label: "Deals",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_active),
              label: "Notification",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded),
              label: "Account",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Cart",
            ),
          ]),
    );
  }
}

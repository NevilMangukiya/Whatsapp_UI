import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'global.dart';
import 'main.dart';
import 'screens/ios_screens/calls_page_ios.dart';
import 'screens/ios_screens/camera_page_ios.dart';
import 'screens/ios_screens/chats_page_ios.dart';
import 'screens/ios_screens/settings_page_ios.dart';
import 'screens/ios_screens/cupertino_status_screen.dart';

class CupertinoHomeScreen extends StatefulWidget {
  const CupertinoHomeScreen({Key? key}) : super(key: key);

  @override
  State<CupertinoHomeScreen> createState() => _CupertinoHomeScreenState();
}

class _CupertinoHomeScreenState extends State<CupertinoHomeScreen> {
  List<Widget> data = const [
    CupertinoStatusScreen(),
    CupertinoCallsScreen(),
    CupertinoCameraScreen(),
    CupertinoChatsScreen(),
    CupertinoSettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        trailing: CupertinoSwitch(
          value: Global.isIOS,
          onChanged: (val) {
            Global.isIOS = val;
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => const MyApp()),
                (route) => false);
          },
        ),
      ),
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              activeIcon: Icon(CupertinoIcons.circle_fill),
              icon: Icon(CupertinoIcons.circle),
              label: 'Status',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(CupertinoIcons.phone_solid),
              icon: Icon(CupertinoIcons.phone),
              label: 'Calls',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(CupertinoIcons.camera_fill),
              icon: Icon(CupertinoIcons.camera),
              label: 'Camera',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(CupertinoIcons.chat_bubble_2_fill),
              icon: Icon(CupertinoIcons.chat_bubble_2),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(CupertinoIcons.person_alt_circle_fill),
              icon: Icon(CupertinoIcons.person_alt_circle),
              label: 'Account',
            ),
          ],
        ),
        tabBuilder: (context, index) {
          return CupertinoTabView(
            builder: (context) {
              return data[index];
            },
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'global.dart';
import 'main.dart';
import 'screens/android_screens/calls_page.dart';
import 'screens/android_screens/camera_page.dart';
import 'screens/android_screens/chats_page.dart';
import 'screens/android_screens/status_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    tabController = TabController(length: 4, vsync: this);
    tabController.index = 1;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          elevation: 3,
          backgroundColor: Global.appColor,
          title: const Text(
            "WhatsApp",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          actions: [
            Switch(
                onChanged: (val) {
                  Global.isIOS = val;
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => const MyApp()),
                      (route) => false);
                },
                value: Global.isIOS),
            const Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(Icons.search),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(Icons.more_vert),
            ),
          ],
          bottom: TabBar(
            controller: tabController,
            indicatorColor: Colors.white,
            indicatorWeight: 3,
            isScrollable: true,
            labelStyle:
                const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            tabs: const [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: const [
            CameraTabScreen(),
            ChatsTabScreen(),
            StatusTabScreen(),
            CallTabScreen(),
          ],
        ),
      ),
    );
  }
}

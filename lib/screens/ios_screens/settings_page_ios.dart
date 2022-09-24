import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSettingsScreen extends StatefulWidget {
  const CupertinoSettingsScreen({Key? key}) : super(key: key);

  @override
  State<CupertinoSettingsScreen> createState() =>
      _CupertinoSettingsScreenState();
}

class _CupertinoSettingsScreenState extends State<CupertinoSettingsScreen> {
  get settingsData => null;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Account'),
      ),
      backgroundColor: Colors.grey[50],
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey, width: 0.3),
              ),
              height: 210,
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Language'),
                        Icon(
                          CupertinoIcons.forward,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    indent: 20,
                    thickness: 1.3,
                    height: 20,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Notification'),
                        Icon(
                          CupertinoIcons.forward,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    indent: 20,
                    thickness: 1.3,
                    height: 20,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Security'),
                        Icon(
                          CupertinoIcons.forward,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    indent: 20,
                    thickness: 1.3,
                    height: 20,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Chats'),
                        Icon(
                          CupertinoIcons.forward,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey, width: 0.3),
              ),
              height: 100,
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Chats backup"),
                        Icon(
                          CupertinoIcons.forward,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    indent: 20,
                    thickness: 1.3,
                    height: 20,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Help"),
                        Icon(
                          CupertinoIcons.forward,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

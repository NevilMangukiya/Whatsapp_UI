import 'package:flutter/material.dart';

import '../../global.dart';
import '../../global_list.dart';

class ChatsTabScreen extends StatefulWidget {
  const ChatsTabScreen({Key? key}) : super(key: key);

  @override
  State<ChatsTabScreen> createState() => _ChatsTabScreenState();
}

class _ChatsTabScreenState extends State<ChatsTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemBuilder: (context, i) {
          return InkWell(
            onTap: () {
              Navigator.of(context)
                  .pushNamed('ChatsDetailsScreen', arguments: chatsAndroid[i]);
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.grey[300],
                        backgroundImage:
                            NetworkImage('${chatsAndroid[i]["img"]}'),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${chatsAndroid[i]["name"]}',
                            style: Global.nameStyle,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            '${chatsAndroid[i]["subTitle"]}',
                            style: Global.subNameStyle,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '${chatsAndroid[i]["time"]}',
                        style: Global.timeStyle,
                      ),
                      const SizedBox(
                        height: 29,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: chatsAndroid.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Global.appColor,
        child: const Icon(Icons.chat),
      ),
    );
  }
}

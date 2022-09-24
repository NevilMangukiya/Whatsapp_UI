import 'package:flutter/cupertino.dart';

class CupertinoCameraScreen extends StatefulWidget {
  const CupertinoCameraScreen({Key? key}) : super(key: key);

  @override
  State<CupertinoCameraScreen> createState() => _CupertinoCameraScreenState();
}

class _CupertinoCameraScreenState extends State<CupertinoCameraScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Container(
        alignment: Alignment.center,
        child: Icon(
          CupertinoIcons.camera,
          size: 250,
          color: CupertinoColors.systemGrey.withOpacity(0.5),
        ),
      ),
    );
  }
}

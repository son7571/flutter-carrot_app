import 'package:carrot_app/screens/chatting/components/appbar_bottom_line.dart';
import 'package:flutter/material.dart';

class NearMeScreen extends StatelessWidget {
  const NearMeScreen();

  @override
  Widget build(BuildContext context) {
    print("NearMeScreen build");
    return Scaffold(
      appBar: AppBar(
        title: Text("내 근처"),
        bottom: appbarBottomLine(),
      ),
      body: ListView(),
    );
  }
}

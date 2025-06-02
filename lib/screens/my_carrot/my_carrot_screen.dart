import 'package:carrot_app/models/icon_menu.dart';
import 'package:carrot_app/screens/my_carrot/components/card_icon_menu.dart';
import 'package:carrot_app/screens/my_carrot/components/my_carrot_header.dart';
import 'package:flutter/material.dart';

class MyCarrotScreen extends StatelessWidget {
  const MyCarrotScreen();

  @override
  Widget build(BuildContext context) {
    print("MyCarrotScreen build");
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          "나의 당근",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size(double.infinity, 0.5),
          child: Divider(
            thickness: 0.5,
            height: 0.5,
            color: Colors.grey,
          ),
        ),
      ),
      body: ListView(
        children: [
          MyCarrotHeader(),
          const SizedBox(height: 8.0),
          CardIconMenu(iconMenuList: iconMenu1),
          const SizedBox(height: 8.0),
          CardIconMenu(iconMenuList: iconMenu2),
          const SizedBox(height: 8.0),
          CardIconMenu(iconMenuList: iconMenu3),
        ],
      ),
    );
  }
}

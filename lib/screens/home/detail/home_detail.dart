import 'package:flutter/material.dart';

class HomeDetailScreen extends StatelessWidget {
  const HomeDetailScreen();

  @override
  Widget build(BuildContext context) {
    print("HomeDetailScreen build");
    return Scaffold(
      appBar: AppBar(
        title: Text("detail"),
      ),
      body: Center(child: Text("HomeDetailScreen")),
    );
  }
}

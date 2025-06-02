import 'package:carrot_app/screens/chatting/components/appbar_bottom_line.dart';
import 'package:carrot_app/screens/neighborhood_life/components/life_header.dart';
import 'package:flutter/material.dart';

class NeighborhoodLifeScreen extends StatelessWidget {
  const NeighborhoodLifeScreen();

  @override
  Widget build(BuildContext context) {
    print("NearMeScreen build");
    return Scaffold(
      appBar: AppBar(
        title: Text("동네생활"),
        bottom: appbarBottomLine(),
      ),
      body: ListView(
        children: [
          LifeHeader(),
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            // child: LifeBody(
            //   neighborhoodLife: neighborhoodLifeList[0],)
          ),
        ],
      ),
    );
  }
}

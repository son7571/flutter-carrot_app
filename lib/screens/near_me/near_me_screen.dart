import 'package:carrot_app/models/recommend_store.dart';
import 'package:carrot_app/screens/chatting/components/appbar_bottom_line.dart';
import 'package:carrot_app/screens/near_me/components/bottom_title_icon.dart';
import 'package:carrot_app/screens/near_me/components/round_border_text.dart';
import 'package:carrot_app/screens/near_me/components/search_text_field.dart';
import 'package:carrot_app/screens/near_me/components/store_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NearMeScreen extends StatelessWidget {
  const NearMeScreen();

  @override
  Widget build(BuildContext context) {
    print("MyCarrotScreen build");
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          "내 근처",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(icon: const Icon(CupertinoIcons.pencil), onPressed: () {}),
          IconButton(icon: const Icon(CupertinoIcons.bell), onPressed: () {}),
        ],
        bottom: appbarBottomLine(),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SearchTextField(),
          ),
          SizedBox(
            height: 66,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: searchKeyword.length,
              itemBuilder: (context, index) {
                return Center(
                  child: RoundBorderText(
                    title: searchKeyword[index],
                    position: index,
                  ),
                );
              },
            ),
          ),
          Divider(
            color: Colors.grey[100],
            thickness: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 30),
            child: Wrap(
              alignment: WrapAlignment.start,
              spacing: 22,
              runSpacing: 30,
              children: [
                const BottomTitleIcon(
                  iconData: FontAwesomeIcons.user,
                  title: "구인구직",
                ),
                const BottomTitleIcon(
                  iconData: FontAwesomeIcons.edit,
                  title: "과외/클래스",
                ),
                const BottomTitleIcon(
                  iconData: FontAwesomeIcons.appleAlt,
                  title: "농수산물",
                ),
                const BottomTitleIcon(
                  iconData: FontAwesomeIcons.hotel,
                  title: "부동산",
                ),
                const BottomTitleIcon(
                  iconData: FontAwesomeIcons.car,
                  title: "중고차",
                ),
                const BottomTitleIcon(
                  iconData: FontAwesomeIcons.chessBishop,
                  title: "전시/행사",
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text("이웃들의 추천 가게", style: TextTheme().displayMedium),
          ),
          const SizedBox(height: 20),
          Container(
            height: 288,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: recommendStoreList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: StoreItem(
                    recommendStore: recommendStoreList[index],
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}

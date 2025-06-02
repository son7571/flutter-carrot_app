import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyCarrotHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),

      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Column(
          children: [
            _buildprofileRow(),
            const SizedBox(height: 30),
            _buildprofileButton(),
            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buiildRoundTextButton("판매내역", FontAwesomeIcons.receipt),
                _buiildRoundTextButton("구매내역", FontAwesomeIcons.shoppingBag),
                _buiildRoundTextButton("관심목록", FontAwesomeIcons.heart),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildprofileRow() {
    return Row(
      children: [
        Stack(
          children: [
            SizedBox(
              width: 65,
              height: 65,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32.5),
                child: Image.network(
                  "https://picsum.photos/id/22/200/300",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "developer",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              "좌동 #00912",
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildprofileButton() {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(8),
        ),
        height: 45,
        child: Center(
          child: Text(
            "프로필 보기",
            style: TextTheme().titleMedium,
          ),
        ),
      ),
    );
  }

  Widget _buiildRoundTextButton(String title, IconData iconData) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color.fromRGBO(255, 226, 208, 1),
            border: Border.all(color: Color(0xFFD4D5DD), width: 0.5),
          ),
          child: Icon(
            iconData,
            color: Colors.orange,
          ),
        ),
        Text(title),
      ],
    );
  }
}

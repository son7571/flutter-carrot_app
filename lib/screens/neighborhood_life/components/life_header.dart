import 'package:carrot_app/models/neighborhood_life.dart';
import 'package:carrot_app/screens/chatting/components/image_container.dart';
import 'package:flutter/material.dart';

class LifeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16),
      elevation: 0.5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      child: Row(
        children: [
          ImageContainer(
            borderRadius: 6,
            imageUrl: "https://picsum.photos/id/780/200/100",
            width: 45,
            height: 45,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              lifeTitle,
              style: TextTheme().bodyLarge,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:carrot_app/core/my_util.dart';
import 'package:carrot_app/models/product.dart';
import 'package:flutter/cupertino.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    required this.p,
  });

  final Product p;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: Container(
        height: 115,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                "https://picsum.photos/id/206/200/300",
                width: 115,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${p.title}"),
                  Text("${p.address} • ${p.publishedAt}"),
                  Text(
                    "${p.price.toMoney()}원",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Spacer(),
                  // Text("${formatToMoney(p.price)}"),
                  Row(
                    children: [
                      Spacer(),
                      Icon(CupertinoIcons.chat_bubble_2),
                      SizedBox(width: 3),
                      Text("${p.commentsCount}"),
                      SizedBox(width: 10),
                      Icon(CupertinoIcons.heart),
                      SizedBox(width: 3),
                      Text("${p.heartCount}"),
                    ],
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

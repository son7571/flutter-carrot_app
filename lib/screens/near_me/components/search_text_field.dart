import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          disabledBorder: _buildOutLineInputBorder(),

          enabledBorder: _buildOutLineInputBorder(),

          focusedBorder: _buildOutLineInputBorder(),
          filled: true,
          fillColor: Colors.grey[200],
          prefixIcon: Icon(
            CupertinoIcons.search,
            color: Colors.grey,
          ),
          contentPadding: const EdgeInsets.only(
            left: 0,
            right: 15,
            top: 15,
            bottom: 0,
          ),
          hintText: "좌동 주변 가게를 찾아 보세요.",
          hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ),
    );
  }

  OutlineInputBorder _buildOutLineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(width: 0.5, color: Color(0xFFD4D5DD)),
      borderRadius: BorderRadius.circular(8),
    );
  }
}

import 'package:flutter/material.dart';

const primary_color = const Color(0xFFFF6666);

class ItemAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: primary_color,
              size: 24,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Product Name",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: primary_color),
            ),
          ),
          Spacer(),
          Icon(
            Icons.favorite,
            color: Colors.red,
            size: 24,
          )
        ],
      ),
    );
  }
}

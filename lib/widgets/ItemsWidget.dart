import 'package:flutter/material.dart';

const primary_color = const Color(0xFFFF6666);

class ItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.68,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        for (int i = 1; i < 8; i++)
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: primary_color,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "50%",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Icon(
                      Icons.favorite_border,
                      color: primary_color,
                    )
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'itemPage');
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      'images/$i.png',
                      height: 120,
                      width: 120,
                    ),
                  ),
                ),
                Container(
                  // padding: EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "product title",
                    style: TextStyle(
                        fontSize: 18,
                        color: primary_color,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'some thing desr',
                    style: TextStyle(fontSize: 12, color: primary_color),
                  ),
                ),
                Container(
                  // padding: EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$55",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: primary_color),
                      ),
                      Icon(
                        Icons.shopping_cart_checkout,
                        color: primary_color,
                      )
                    ],
                  ),
                )
              ],
            ),
          )
      ],
    );
  }
}

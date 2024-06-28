import 'package:flutter/material.dart';

const primary_color = const Color(0xFFFF6666);

class CartBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomAppBar(
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    "Total:",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: primary_color),
                  ),
                  Text('\$250',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: primary_color))
                ],
                crossAxisAlignment: CrossAxisAlignment.center,
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 4),
                // width: double.infinity,
                decoration: BoxDecoration(
                  color: primary_color,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Text("checkout",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              )
            ],
          )),
    );
  }
}

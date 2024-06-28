import 'package:flutter/material.dart';


class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        for(int i =1;i< 8; i++) 
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          padding: const  EdgeInsets.symmetric(vertical: 5,horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("images/$i.png", width: 40, height: 40,),
              const Text("sandal", style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),)
            ],
          ),
        )
      ],
    ),
  );
  }
}
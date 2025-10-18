import 'package:appgreenfood/screen/SingleItemScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  //const ItemsWidget({super.key});
  final List img = [
    'Cachua',
    'Carot',
    'Khoaimi',
    'Khoaitay',
    'Bapcai',
    'Cuden',
    'Xalach',
    'Bongcai',
    'Mangtay',
    'Raumam',
    'Cucaitim',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: (150 / 195),
      children: [
        for (int i = 0; i < img.length; i++) 
          Container(
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 7),
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 250, 250, 252),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 17, 0, 0).withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 8,
                ),
              ],
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> SingleItemScreen(img[i])));
                  },
                  child: Center(
                  child: Container(
                    width: 110,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage(
                          "images/${img[i]}.jpg",
                          
                          ),
                        )
                      ),
                      child: Padding(padding: EdgeInsets.all(10)),
                    ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        img[i],
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 16, 0, 0),
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "Best Vegetables",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "13.000₫",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 52, 229, 155),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      " / 500g",
                      style: TextStyle(
                        fontSize: 14,
                        ),
                      ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 52, 229, 155),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        CupertinoIcons.add,
                        size: 10,
                        color: const Color.fromARGB(255, 21, 0, 0),
                      ),
                    ),
                  ],
                ),
              ),
            ],
            ),
        ),
      ],
    );
  }
}
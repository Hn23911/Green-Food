import 'package:appgreenfood/screen/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SingleItemScreen extends StatelessWidget {
  //const SingleItemScreen({super.key});
  String img;
  SingleItemScreen(this.img);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 30, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homescreen()));
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: const Color.fromARGB(255, 17, 0, 0).withOpacity(0.5),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Center(
                  child: Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "images/$img.jpg",
                          ),
                        )
                      ),
                      child: Padding(padding: EdgeInsets.all(20)),
                    ),
                ),
                SizedBox(height: 50),
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "BEST VEGETABLES",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 17, 0, 0).withOpacity(0.4),
                          letterSpacing: 3,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        img,
                        style: TextStyle(
                          fontSize: 30,
                          letterSpacing: 1,
                          color: const Color.fromARGB(255, 10, 0, 0),
                        ),
                      ),
                      SizedBox(height: 25),
                      Container(
                        alignment: Alignment.centerLeft,
                        // width: MediaQuery.of(context).size.width,
                        // child: Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     Container(
                        //       padding: EdgeInsets.all(15),
                        //       width: 120,
                        //       decoration: BoxDecoration(
                        //         border: Border.all(
                        //           color: const Color.fromARGB(255, 10, 0, 0).withOpacity(0.2),
                        //         ),
                        //         borderRadius: BorderRadius.circular(20),
                        //       ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "One tomato of 60g or more",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "13.000₫",
                                      style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 21, 0, 0),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "500g",
                                      style: TextStyle(
                                        fontSize: 13,
                                      ),
                                    ),
                                  ],
                                ),
                                // Icon(
                                //   CupertinoIcons.minus,
                                //   size: 18,
                                //   color: const Color.fromARGB(255, 14, 0, 0),
                                // ),
                                // SizedBox(width: 15),
                                // Text(
                                //   "1",
                                //   style: TextStyle(
                                //     color: const Color.fromARGB(255, 18, 0, 0),
                                //     fontSize: 16,
                                //     fontWeight: FontWeight.bold,
                                //   ),
                                // ),
                                // SizedBox(width: 15),
                            //     Icon(
                            //       CupertinoIcons.minus,
                            //       size: 18,
                            //       color: const Color.fromARGB(255, 15, 0, 0),
                            //     ),
                            //   ],
                            // ),
                            // ),
                      //       Text(
                      //         "13.000₫",
                      //         style: TextStyle(
                      //           fontSize: 18,
                      //           fontWeight: FontWeight.bold,
                      //           color: const Color.fromARGB(255, 14, 0, 0),
                      //         ),
                      //       ),
                          ],
                        ),
                      ),
                      // SizedBox(height: 20),
                      Text(
                        "Vegetables are an indispensable part of a healthy diet.",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 15, 0, 0).withOpacity(0.4),
                        ),
                      ),
                      SizedBox(height: 20),
                      const Row(
                        children: [
                          // Text(
                          //   "Unit: ",
                          //   style: TextStyle(
                          //     fontSize: 18,
                          //     fontWeight: FontWeight.bold,
                          //     color: Colors.white,
                          //   ),
                          // ),
                          // SizedBox(width: 10),
                          // Text(
                          //   "500g",
                          //   style: TextStyle(
                          //     fontSize: 16,
                          //     fontWeight: FontWeight.bold,
                          //     color: const Color.fromARGB(255, 13, 0, 0),
                          //   ),
                          // ),
                        ],
                      ),
                
                      SizedBox(height: 20),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 220,
                                width: 60,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 52, 229, 155),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Icon(
                                  CupertinoIcons.cart_fill,
                                  color: Colors.white,
                                  size: 35,
                                  ),
                                ),
                                                        
                                // child: Text(
                                //   "Add to Cart",
                                //   style: TextStyle(
                                //     color: const Color.fromARGB(255, 0, 17, 10),
                                //     fontSize: 20,
                                //     fontWeight: FontWeight.bold,
                                //     letterSpacing: 1,
                                //   ),
                                // ),
                            ),
                        
                              Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 163, 164, 166),
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                child: Icon(
                                  Icons.favorite_outline,
                                  color: const Color.fromARGB(255, 10, 0, 0),
                                  ),
                              
                              ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            ),
          ),
      ),
    );
  }
}

import 'package:appgreenfood/screen/AccountScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';  // Import AccountScreen

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            children: [
              Icon(
                Icons.home,
                color: Color.fromARGB(255, 52, 229, 155),
                size: 25,
              ),
              Text(
                "Home",
                style: TextStyle(
                  color: Color.fromARGB(255, 52, 229, 155),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const Column(
            children: [
              Icon(
                Icons.favorite_outlined,
                color: Color.fromARGB(255, 52, 229, 155),
                size: 25,
              ),
              Text(
                "Favorite",
                style: TextStyle(
                  color: Color.fromARGB(255, 52, 229, 155),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const Column(
            children: [
              Icon(
                CupertinoIcons.cart,
                color: Color.fromARGB(255, 52, 229, 155),
                size: 25,
              ),
              Text(
                "My cart",
                style: TextStyle(
                  color: Color.fromARGB(255, 52, 229, 155),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          InkWell(
            onTap: () {
              // Điều hướng tới trang AccountScreen khi bấm vào "Account"
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AccountScreen()),
              );
            },
            child: const Column(
              children: [
                Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 52, 229, 155),
                  size: 25,
                ),
                Text(
                  "Account",
                  style: TextStyle(
                    color: Color.fromARGB(255, 52, 229, 155),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

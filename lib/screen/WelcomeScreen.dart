//import 'package:cook/screen/LoginScreen.dart';
//import 'package:cook/screen/RegisterScreen.dart';

import 'package:appgreenfood/screen/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:google_fonts/google_fonts.dart';
class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(top: 60, bottom: 30),
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("images/photo.jpg"),
            fit: BoxFit.cover,
            opacity: 0.6,
          )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Green Food",
              style: GoogleFonts.notoSerifDisplay(
                fontSize: 60, 
                color: const Color.fromARGB(255, 52, 229, 155),
            ),
            ),
            Column(children: [
              Text("Good Vegetables - Good Health",
              style: TextStyle(
                color: Colors.white.withOpacity(0.8),
                fontSize: 16,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
              ),
              ),
              SizedBox(height: 50),
              Material(
                color: Color.fromARGB(255, 52, 229, 155),
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> Homescreen(),
                    ));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                    child: Text(
                      "Start", 
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                    ),
                    ),
                  ),
                ),
              )
            ],)
          ],
        ),
        ),
    );
  }
}
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Recipe App'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => RegisterScreen()),
//                 );
//               },
//               child: Text('Register'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => LoginScreen()),
//                 );
//               },
//               child: Text('Sign In'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
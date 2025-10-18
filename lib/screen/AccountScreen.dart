import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  final String userName = "Nguyễn Thu Hiền"; // Ví dụ tên người dùng
  final String email = "nguyenhien.1192003@gmail.com"; // Ví dụ Gmail
  final String phone = "0377036176"; // Ví dụ số điện thoại

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account Details'),
        backgroundColor: Color.fromARGB(255, 52, 229, 155),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name: $userName',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Email: $email',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Phone: $phone',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

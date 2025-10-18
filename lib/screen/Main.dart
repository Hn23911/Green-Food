import 'package:appgreenfood/widget/HomeBottomBar.dart';
import 'package:flutter/material.dart';  // Đảm bảo bạn đã import đúng

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Example'),
        ),
        body: Center(
          child: HomeBottomBar(),  // Hiển thị HomeBottomBar ở trang chính
        ),
      ),
    );
  }
}

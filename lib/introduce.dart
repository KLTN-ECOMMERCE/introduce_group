import 'dart:async';

import 'package:flutter/material.dart';
import 'package:introduce_group/home_page.dart';

class Introduce extends StatefulWidget {
  const Introduce({super.key});

  @override
  State<Introduce> createState() {
    return _IntroduceState();
  }
}

class _IntroduceState extends State<Introduce> {
  @override
  void initState() {
    super.initState();
    _timer();
  }

  void _timer() {
    Timer(
      const Duration(seconds: 10),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Giới thiệu thành viên trong nhóm'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Xin chào, các thành viên của nhóm 11',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Hồ Xuân Hiếu - 20119339',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Đỗ Ngọc Duy Hưng - 20145267',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

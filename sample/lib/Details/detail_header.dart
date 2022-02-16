import 'package:flutter/material.dart';

class DetailHeader extends StatelessWidget {
  const DetailHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Center(
        child: Text(
          "Please add your product detail",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'detail_input_field.dart';

class DetailInputWrapper extends StatelessWidget {
  const DetailInputWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 40,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: DetailInputField(),
          ),
        ],
      ),
    );
  }
}

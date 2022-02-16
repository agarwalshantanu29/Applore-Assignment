import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DetailInputField extends StatefulWidget {
  @override
  State<DetailInputField> createState() => _DetailInputFieldState();
}

class _DetailInputFieldState extends State<DetailInputField> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              border: Border(
            bottom: BorderSide(color: Colors.grey),
          )),
          child: TextField(
            controller: _nameController,
            onChanged: (val) {
              print(val);
            },
            decoration: const InputDecoration(
                hintText: "Enter your product name",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              border: Border(
            bottom: BorderSide(color: Colors.grey),
          )),
          child: TextField(
            controller: _descriptionController,
            onChanged: (val) {
              print(val);
            },
            decoration: const InputDecoration(
                hintText: "Enter your product description",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        GestureDetector(
          onTap: () {
            FirebaseFirestore.instance.collection('Product').add({
              'productName': _nameController.text,
              'body': _descriptionController.text
            });
            Navigator.pop(context);
          },
          child: Container(
            height: 50,
            margin: const EdgeInsets.symmetric(horizontal: 50),
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Text(
                "Add Detail",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

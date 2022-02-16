import 'package:flutter/material.dart';
import 'detail_header.dart';
import 'detail_input_wrapper.dart';

class AddProductDetail extends StatelessWidget {
  const AddProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Product Detail Screen'),
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.deepPurple,
          Colors.purple,
          Colors.purpleAccent,
        ])),
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  const DetailHeader(),
                  Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(60),
                              topRight: Radius.circular(60),
                            )),
                        child: const DetailInputWrapper(),
                      ))
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

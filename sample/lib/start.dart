import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sample/Details/add_product_detail.dart';

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Product Screen'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AddProductDetail()),
              );
            },
          )
        ],
      ),
      body: RefreshIndicator(
        onRefresh: loadData,
        child: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('Product').snapshots(),
          builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return ListView(
              children: snapshot.data!.docs.map((document) {
                return Column(
                  children: [
                    ListTile(
                      leading: Image.network(
                          'https://www.business2community.com/wp-content/uploads/2014/01/product-coming-soon.jpg'),
                      title: Text(
                        document['productName'],
                        textScaleFactor: 1.5,
                        style: const TextStyle(
                          color: Colors.deepPurple,
                        ),
                      ),
                      trailing: const Icon(
                        Icons.shop_rounded,
                        color: Colors.deepPurple,
                      ),
                      subtitle: Text(
                        document['body'],
                        style: const TextStyle(
                          color: Colors.purpleAccent,
                        ),
                      ),
                      selected: true,
                      onTap: () {
                        setState(() {
// txt='List Tile pressed';
                        });
                      },
                    ),
                    const Divider(),
                  ],
                );
              }).toList(),
            );
          },
        ),
      ),
    );
  }
  Future loadData() async {
    FirebaseFirestore.instance.collection('Product').snapshots();
  }
}

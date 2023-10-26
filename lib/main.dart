import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        title: 'Product layout demo home page',
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Product Kami")),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            ProductBox(
                name: "Cort Accoustic",
                description:
                    "Gitar akustik cort dibuat dengan bahan unggulanyang menghasilkan kualitas yang memuaskan",
                price: 1250000,
                image: "produk1.jfif"),
            ProductBox(
                name: "Cort Bass",
                description: "Pixel is the most featureful phone ever",
                price: 1570000,
                image: "produk2.jfif"),
            ProductBox(
                name: "Ukulele",
                description: "Laptop is most productive development tool",
                price: 320000,
                image: "produk3.jfif"),
            ProductBox(
                name: "Jimbe",
                description:
                    "Tablet is the most useful device ever for meeting",
                price: 180000,
                image: "produk4.jfif"),
            ProductBox(
                name: "Bass Drum",
                description: "Pendrive is useful storage medium",
                price: 970000,
                image: "produk5.jfif"),
            ProductBox(
                name: "Fender Guitar Electric",
                description: "Floppy drive is useful rescue storage medium",
                price: 1830000,
                image: "produk6.jfif"),
          ],
        ));
  }
}

class ProductBox extends StatelessWidget {
  const ProductBox(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.image})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 140,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.asset("images/" + image),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(this.description),
                          Text("Price: " + this.price.toString()),
                        ],
                      )))
            ])));
  }
}

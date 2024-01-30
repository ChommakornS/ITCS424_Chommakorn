import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Listing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ListViewDemo(),
    );
  }
}

class ImageData {
  final String imagePath;
  final String name;
  final String description;
  final String price;

  ImageData({
    required this.imagePath,
    required this.name,
    required this.description,
    required this.price,
  });
}

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Define a list of ImageData objects
    List<ImageData> imageDataList = [
      ImageData(
        imagePath: "assets/images/iphone1.jpg",
        name: "Iphone",
        description: "iPhone is the stylish phone ever",
        price: "Price: 1000",
      ),
      ImageData(
        imagePath: "assets/images/pixel.jpg",
        name: "Pixel",
        description: "Pixel is the most featureful phone ever",
        price: "Price: 800",
      ),
      ImageData(
        imagePath: "assets/images/laptop.jpg",
        name: "Laptop",
        description: "Laptop is the most productive development tool",
        price: "Price: 2000",
      ),
      ImageData(
        imagePath: "assets/images/tablet.jpg",
        name: "Tablet",
        description: "Tablet is the most useful device ever for meeting",
        price: "Price: 1500",
      ),
      ImageData(
        imagePath: "assets/images/pendrive.jpg",
        name: "Pendrive",
        description: "Pendrive is a portable storage device",
        price: "Price: 100",
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Product Listing'),
        backgroundColor: Colors.blue, // Set background color of the product listing section
      ),
      body: ListView.builder(
        itemCount: imageDataList.length,
        itemBuilder: (BuildContext context, int index) {
          final imageData = imageDataList[index];
          return Card(
            elevation: 3,
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Image.asset(
                imageData.imagePath,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              title: Text(imageData.name),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(imageData.description),
                  Text(imageData.price),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomePageTwo extends StatelessWidget {
  HomePageTwo({super.key});

  final List<ProductDataModel> listOfProduct = [
    ProductDataModel(
      productName: 'Product index 0',
      productPrice: 'Product index 0',
      productImage: 'https://cdn.dummyjson.com/product-images/1/1.jpg',
    ),
    ProductDataModel(
      productName: 'Product index 1',
      productPrice: 'Product index 1',
      productImage: 'https://cdn.dummyjson.com/product-images/1/2.jpg',
    ),
    ProductDataModel(
      productName: 'Product index 2',
      productPrice: 'Product index 2',
      productImage: 'https://cdn.dummyjson.com/product-images/1/4.jpg',
    ),
    ProductDataModel(
      productName: 'Product index 3',
      productPrice: 'Product index 3',
      productImage: 'https://cdn.dummyjson.com/product-images/2/1.jpg',
    ),
    ProductDataModel(
      productName: 'Product index 4',
      productPrice: 'Product index 4',
      productImage: 'https://cdn.dummyjson.com/product-images/1/1.jpg',
    ),
    ProductDataModel(
      productName: 'Product index 5',
      productPrice: 'Product index 5',
      productImage: 'https://cdn.dummyjson.com/product-images/1/1.jpg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: const Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.black,
          ),
          title: const Text(
            'ICTHUB 2024',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          actions: const [
            Icon(
              Icons.not_interested,
              color: Colors.black,
            ),
            Icon(
              Icons.brightness_low,
              color: Colors.black,
            ),
            Icon(
              Icons.safety_check_sharp,
              color: Colors.black,
            ),
          ],
        ),
        backgroundColor: const Color(0xff2D2F41),
        body: ListView.builder(
          itemCount: listOfProduct.length,
          itemBuilder: (context, index) {
            return Container(
              height: 100,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Image.network(
                    listOfProduct[index].productImage,
                  ),
                  Column(
                    children: [
                      Text(listOfProduct[index].productName),
                      Text(listOfProduct[index].productPrice),
                    ],
                  ),
                ],
              ),
            );
          },
        ));
  }
}

class ProductDataModel {
  String productName;
  String productPrice;
  String productImage;
  ProductDataModel({
    required this.productName,
    required this.productPrice,
    required this.productImage,
  });
}

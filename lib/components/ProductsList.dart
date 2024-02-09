import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/ProductScreen.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            ProductCard(),
            ProductCard(),
          ],
        ),
        Row(
          children: [
            ProductCard(),
            ProductCard(),
          ],
        ),
        Row(
          children: [
            ProductCard(),
            ProductCard(),
          ],
        ),
        Row(
          children: [
            ProductCard(),
            ProductCard(),
          ],
        ),
        Row(
          children: [
            ProductCard(),
            ProductCard(),
          ],
        ),
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    double halfScreenWidth = MediaQuery.of(context).size.width / 2;

    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const ProductScreen()));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12.0)),
                        child: Image.network(
                          "https://img.freepik.com/free-photo/medium-shot-woman-with-yellow-sunglasses_23-2149068952.jpg?w=826&t=st=1707381882~exp=1707382482~hmac=9cffc8c5f56820b6484dd12806574a5c4075d2ec08d714786672b1b90e48d094",
                          fit: BoxFit.contain,
                          width: halfScreenWidth, // Set the width as needed
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            CupertinoIcons.heart_fill,
                            color: Colors.red,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Text(
              "Product Name",
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
            const Text(
              "\$ 45.9",
            )
          ],
        ),
      ),
    );
  }
}

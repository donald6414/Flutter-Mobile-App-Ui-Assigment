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
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                    child: Image.network(
                      "https://images.unsplash.com/photo-1515886657613-9f3515b0c78f?q=80&w=1920&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      fit: BoxFit.contain,
                      width: halfScreenWidth, // Set the width as needed
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              "Product Name",
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
            const Text(
              "45.9",
            )
          ],
        ),
      ),
    );
  }
}

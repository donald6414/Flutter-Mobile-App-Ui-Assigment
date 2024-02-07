import 'package:flutter/material.dart';

import '../components/ProductsList.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Center(
              child: Text(
                "Summer 2020",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20.0,
                  color: Colors.grey,
                ),
              ),
            ),
            TabsSection(),
            ProductsList(),
          ],
        ),
      ),
    );
  }
}

class TabsSection extends StatelessWidget {
  const TabsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Trending"),
          SizedBox(width: 16.0),
          Text("Summer"),
          SizedBox(width: 16.0),
          Text("Winter"),
          SizedBox(width: 16.0),
          Text("Night"),
          SizedBox(width: 16.0),
          Text("Beach")
        ],
      ),
    );
  }
}

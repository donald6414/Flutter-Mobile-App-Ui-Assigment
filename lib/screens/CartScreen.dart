import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Center(
            child: Text(
              "My Cart",
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w400),
            ),
          ),
          CartList(),
          CartSummary(),
        ],
      ),
    );
  }
}

class CartList extends StatelessWidget {
  const CartList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CartCard(),
        CartCard(),
        CartCard(),
      ],
    );
  }
}

class CartCard extends StatelessWidget {
  const CartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(12.0)),
            child: Image.network(
              "https://images.unsplash.com/photo-1515886657613-9f3515b0c78f?q=80&w=1920&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              fit: BoxFit.contain,
              width: 100, // Set the width as needed
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Jeans Jacket",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w500),
                    ),
                    Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                  ],
                ),
                Text("45.9"),
                Row(
                  children: [ColorCircle(), Size()],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ColorCircle extends StatelessWidget {
  const ColorCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}

class Size extends StatelessWidget {
  const Size({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: const Text(
        'S',
        style: TextStyle(
          fontSize: 16.0,
        ),
      ),
    );
  }
}

class CartSummary extends StatelessWidget {
  const CartSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text("Total:"), Text("127.7")],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text("Shipping:"), Text("0.0")],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Grant Total:",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
            ),
            Text("127.0",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500))
          ],
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: null,
            child: Text("Checkout"),
          ),
        )
      ],
    );
  }
}

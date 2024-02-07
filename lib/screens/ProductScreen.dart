import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double fullScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: [
          ClipRRect(
            borderRadius: BorderRadius.circular(
                8.0), // Adjust the border radius as needed
            child: Image.network(
              "https://images.unsplash.com/photo-1580489944761-15a19d654956?q=80&w=1961&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              fit: BoxFit.cover,
              width: 40, // Set the width as needed
              height: 40, // Set the height as needed
            ),
          ),
        ],
        // title: const Text("E-commerse"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: fullScreenWidth,
              child: Image.network(
                  "https://images.unsplash.com/photo-1515886657613-9f3515b0c78f?q=80&w=1920&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Summer Coat",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w800)),
                  Text("45.0")
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Size",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w800),
              ),
            ),
            const Row(
              children: [SizeCircle()],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Color",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w800),
              ),
            ),
            const Row(
              children: [ColorCircles()],
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: null,
                  child: Text("Add to cart"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SizeCircle extends StatelessWidget {
  const SizeCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
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
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: const Text(
            'M',
            style: TextStyle(
              color: Colors.red,
              fontSize: 16.0,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: const Text(
            'L',
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: const Text(
            'XL',
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
        )
      ],
    );
  }
}

class ColorCircles extends StatelessWidget {
  const ColorCircles({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(16.0),
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.yellow,
            border: Border.all(
              color: Colors.red, // Border color
              width: 2.0, // Border width
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(16.0),
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.brown,
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(16.0),
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(16.0),
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(16.0),
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(20.0),
          ),
        )
      ],
    );
  }
}

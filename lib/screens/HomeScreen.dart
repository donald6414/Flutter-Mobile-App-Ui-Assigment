import 'package:commerce/components/ProductsList.dart';
import 'package:commerce/screens/CartScreen.dart';
import 'package:commerce/screens/ProductsScreen.dart';
import 'package:commerce/screens/ProfileScreen.dart';
import 'package:flutter/material.dart';

import '../components/BottomNavigation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  List<Widget> screens = [
    const HomeScreenDisplay(),
    const ProductsScreen(),
    const CartScreen(),
    const ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          ClipRRect(
            borderRadius: BorderRadius.circular(
                8.0), // Adjust the border radius as needed
            child: Image.network(
              "https://img.freepik.com/free-photo/portrait-pretty-lady-red-warm-jacket-stylish-eyeglasses_197531-15046.jpg?w=2000&t=st=1707381738~exp=1707382338~hmac=16116c232c8a09beef18b7164126e7af1ee90a62c8a60ed82289894b74287974",
              fit: BoxFit.cover,
              width: 40, // Set the width as needed
              height: 40, // Set the height as needed
            ),
          ),
        ],
        // title: const Text("E-commerse"),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            // Handle settings button press
          },
        ),
      ),
      body: screens[_currentIndex],
      bottomNavigationBar: MyBottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

class HomeScreenDisplay extends StatelessWidget {
  const HomeScreenDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Match Your Style",
              style: TextStyle(fontSize: 24.0, fontFamily: "poppins"),
              textAlign: TextAlign.left,
            ),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.search),
                hintText: 'Search...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                ),
              ),
            ),
            HomeTabs(),
            ProductsList(),
          ],
        ),
      ),
    );
  }
}

class HomeTabs extends StatelessWidget {
  const HomeTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: const Text(
            'Trending now',
            style: TextStyle(
              color: Colors.white,
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
            'All',
            style: TextStyle(
              color: Colors.white,
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
            'New',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        ),
      ],
    );
  }
}

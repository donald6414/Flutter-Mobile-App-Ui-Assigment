import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [ProfileImage(), ShortDescription(), FullDescription()],
      ),
    );
  }
}

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius:
            BorderRadius.circular(100.0), // Adjust the border radius as needed
        child: Image.network(
          "https://pbs.twimg.com/profile_images/909322827395883008/zXKiGbej_400x400.jpg",
          fit: BoxFit.cover,
          width: 200, // Set the width as needed
          height: 200, // Set the height as needed
        ),
      ),
    );
  }
}

class ShortDescription extends StatelessWidget {
  const ShortDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "Raymond Reddington",
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w800),
        ),
        Text(
          "A short story is a piece of prose fiction that can typically be read in a single sitting and focuses on a self-contained incident or series of linked",
          textAlign: TextAlign.center,
        ),
        Card(
          elevation: 4.0,
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(12.0),
          // ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text("Specialist"),
                    Text(
                      "Designer",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text("Born"),
                    Text(
                      "June 10, 1986",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text("Height"),
                    Text(
                      "162 cm",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class FullDescription extends StatelessWidget {
  const FullDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Card(
                      elevation: 2.0,
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Icon(CupertinoIcons.heart),
                      ),
                    ),
                    Text(
                      "Single",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Column(
                  children: [
                    Card(
                      elevation: 2.0,
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Icon(Icons.female),
                      ),
                    ),
                    Text(
                      "Female",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                  "291",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
                ),
                Text("Posts")
              ],
            ),
            Column(
              children: [
                Text(
                  "6,200",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
                ),
                Text("Followers")
              ],
            ),
            Column(
              children: [
                Text(
                  "789",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
                ),
                Text("Following")
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              child: ElevatedButton(
                onPressed: null,
                child: Text("Edit my profile"),
              ),
            ),
            SizedBox(
              child: ElevatedButton(
                onPressed: null,
                child: Text("Statistics"),
              ),
            )
          ],
        ),
        Text(
          "ABOUT ME",
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
          textAlign: TextAlign.left,
        ),
        Text(
            "A narrative, story, or tale is any account of a series of related events or experiences, whether nonfictional or fictional. Narratives can be presented through a sequence of written or spoken words, through still or moving images, or through any combination of these.")
      ],
    );
  }
}

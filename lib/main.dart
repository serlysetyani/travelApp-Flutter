import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Homescreen(),
    );
  }
}

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 100),
                IconButton(
                  icon: Icon(Icons.notifications),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.extension),
                  onPressed: () {},
                )
              ],
            ),
            SizedBox(height: 36),
            Text.rich(
              TextSpan(
                  text: 'Welcome,',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: ' Serly',
                      style: TextStyle(fontWeight: FontWeight.normal),
                    )
                  ]),
              style: TextStyle(fontSize: 48),
            ),
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(height: 60),
            Text(
              'Saved places',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 290,
              child: GridView.count(
                padding: EdgeInsets.zero,
                crossAxisCount: 2,
                childAspectRatio: 1.491,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  for (var country in countries)
                    Image.asset('assets/images/$country.png')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

final countries = ['japan', 'greece', 'barcelona', 'rome'];

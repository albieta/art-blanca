import 'package:artblanca/screens/aboutMePage.dart';
import 'package:artblanca/screens/artPage.dart';
import 'package:artblanca/screens/contactPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(const NavigationBarApp());

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Courier New',
        primaryColor: Colors.grey,
        focusColor: Colors.grey
      ),
      home: const NavigationExample(),
    );
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({Key? key}) : super(key: key);

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {

  final List<Widget> _tabs = [
    const ArtPage(),
    const AboutMePage(),
    const ContactPage(),
  ];

  @override
  Widget build(BuildContext context) {
    double titleFontSize = MediaQuery.of(context).size.width < 600 ? 15.0 : 20.0;

    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
              'BLANCA ROMA GÓMEZ',
              style: TextStyle(fontSize: titleFontSize),
            ),
          actions: [
            Builder(
              builder: (BuildContext builderContext) => IconButton(
                icon: const Text('cart'),
                onPressed: () {
                  Scaffold.of(builderContext).openEndDrawer();
                },
              ),
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(text: 'ART'),
              Tab(text: 'ABOUT'),
              Tab(text: 'CONTACT'),
            ],
            indicatorColor: Colors.grey,
            labelColor: Colors.black,
          ),
          centerTitle: true,
        ),
        endDrawer: Drawer(
          child: Container(
            color: Colors.white,
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(16.0),
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      const Text(
                        'Cart',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 50),
                    ],
                  ),
                ),
                ListTile(
                  title: const Text('Item 1'),
                  onTap: () {
                    // Handle item 1 tap
                  },
                ),
                ListTile(
                  title: const Text('Item 2'),
                  onTap: () {
                    // Handle item 2 tap
                  },
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: _tabs,
        ),
      ),
    );
  }
}
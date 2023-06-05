import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tahsin"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange[500],
        actions: [
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            onPressed: () {

            },

          ),

        ],
      ),
    drawer: Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text("Banner with custom messages"),

          ),
          ListTile(
            leading: Icon(
              Icons.home,
            ),
            title: const Text('Page 1'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.train,
            ),
            title: const Text('Page 2'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.pink,
              // margin: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              // padding: EdgeInsets.all(8),
              // alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 100, vertical: 16),
              child: Text('Ostad', style: TextStyle(
                  color: Colors.white,
                  fontSize: 24
              ),),
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                width: 200,
                height: 100,
              ),),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 16)),
              onPressed: () {
                print('hello');
              },
              child: Text(
                'Add',
                style: TextStyle(fontSize: 24),
              ),
            )
          ]
      )
    )
    );
  }
}

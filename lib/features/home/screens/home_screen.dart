import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  AppBar sectionAppBar() {
    return AppBar(
      backgroundColor: Color(0xFF373466),
      leading: IconButton(
        icon: Icon(Icons.menu), // Icon di kiri
        color: Colors.white,
        onPressed: () {},
      ),
      title: Text('Home', style: TextStyle(color: Colors.white)),
      actions: [
        Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(
              Icons.person,
              color: Colors.white,
            )),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: sectionAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // section info
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Card(
                    color: Colors.green,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  /// Welcome Text
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Selamat Datang', // Menampilkan data yang dimuat
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Hello World', // Menampilkan data yang dimuat
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
              child: Text('Banner'),
            ),
            SizedBox(
              height: 50,
              child: Text('Icon Apps'),
            ),
            SizedBox(
              height: 50,
              child: Text('Informasi'),
            ),
            SizedBox(
              height: 50,
              child: Text('ListView'),
            ),
          ],
        ),
      ),
    );
  }
}

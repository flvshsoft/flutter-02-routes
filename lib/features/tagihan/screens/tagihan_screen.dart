import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class TagihanScreen extends StatefulWidget {
  const TagihanScreen({super.key});

  @override
  TagihanScreenState createState() => TagihanScreenState();
}

class TagihanScreenState extends State<TagihanScreen> {
  @override
  void initState() {
    super.initState();
  }

  AppBar sectionAppBar() {
    return AppBar(
      backgroundColor: Color(0xFF373466),
      leading: IconButton(
        icon: Icon(Icons.chevron_left), // Icon di kiri
        color: Colors.white,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text('Tagihan', style: TextStyle(color: Colors.white)),
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
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Informasi'),
                  Shimmer.fromColors(
                    baseColor: Colors.grey[300]!,
                    highlightColor: Colors.grey[100]!,
                    child: Column(
                      children: List.generate(5, (index) {
                        return SizedBox(
                          height: 100,
                          width: double.infinity,
                          child: Row(
                            children: [
                              Card(
                                color: Colors.green,
                                child: Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Icon(
                                    Icons.person,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 20),
                                  Text(
                                    'Lorem Ipsum Dolor Sit Amet Flashsoft', // Menampilkan data yang dimuat
                                    style: const TextStyle(
                                        backgroundColor: Colors.red,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Hello World Flashsoft', // Menampilkan data yang dimuat
                                    style: const TextStyle(
                                        backgroundColor: Colors.red,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

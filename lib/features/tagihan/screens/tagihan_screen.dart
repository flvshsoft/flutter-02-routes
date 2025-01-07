import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:oncard_saku/core/widgets/index.dart';
import 'package:shimmer/shimmer.dart';
import 'package:http/http.dart' as http;

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

  Future<List<dynamic>> fetchApi() async {
    final url = Uri.parse(
        'https://api.flashsoftindonesia.com/oncard/api/wali/siswa.php');
    try {
      // Menambahkan Authorization Bearer Token di header
      final response = await http.get(
        url,
        headers: {
          // 'Authorization': 'Bearer $_token', // Token Anda
          'Content-Type': 'application/json', // Jika diperlukan
        },
      );
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        // print(data);
        return data;
      } else {
        print(response);
        throw Exception('Gagal mengambil data: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Terjadi kesalahan: $e');
    }
  }

  FutureBuilder<List<dynamic>> viewApi() {
    return FutureBuilder<List<dynamic>>(
      future: fetchApi(), // Memanggil fungsi asinkron
      builder: (context, snapshot) {
        // Jika data masih dimuat
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: Column(
              children: List.generate(5, (index) {
                return SizedBox(
                  width: double.infinity, // Lebar penuh
                  child: Card(
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    color: Colors.green,
                    child: Padding(
                      padding: EdgeInsets.all(50),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              }),
            ),
          );
        }

        // Jika terjadi error saat pemuatan data
        if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }

        // Jika berhasil memuat data
        if (snapshot.hasData) {
          final data = snapshot.data!;
          return ListView.builder(
              shrinkWrap:
                  true, // Membatasi ukuran ListView agar sesuai dengan ruang yang tersedia
              physics:
                  NeverScrollableScrollPhysics(), // Menonaktifkan scroll pada ListView karena sudah dalam SingleChildScrollView
              itemCount: data.length,
              itemBuilder: (context, index) {
                final siswa = (data[index]['siswa']);
                // return ListTile(
                //   title: Text('Item ke-${siswa['oncard']['balance']}'),
                // );
                // var fotoUrl =
                //     '${ImageConstants.baseUrl}${siswa['oncard']['foto']}';
                // if ('${siswa['oncard']['foto']}' == 'default.jpg') {
                var fotoUrl =
                    'https://saku.oncard.id/assets_oncard/images/bg_new6.jpg';
                // }
                return SiswaWidget(
                    siswa: siswa, foto: fotoUrl, fotoInstansi: fotoUrl
                    // 'https://oncard.id/app/assets/users/foto/${siswa['oncard']['agency']['foto']}'
                    //
                    );
              }

              // Jika data tidak ada (fallback)
              // return ListTile(
              //   title: Text(siswa['nama']),
              //   leading: Icon(Icons.image_not_supported),
              // );
              // },
              );
          // },
          // );
        }

        // Jika tidak ada data
        return Center(child: Text('No data available'));
      },
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
            viewApi(),
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

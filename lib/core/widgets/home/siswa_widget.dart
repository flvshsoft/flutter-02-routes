import 'package:flutter/material.dart';

class SiswaWidget extends StatelessWidget {
  const SiswaWidget({
    super.key,
    required this.siswa,
    required this.foto,
    required this.fotoInstansi,
  });

  final dynamic siswa;
  final dynamic foto;
  final dynamic fotoInstansi;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // atas
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Color(0xFF373466), // Warna latar belakang
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.0), // Sudut kiri atas
                    topRight: Radius.circular(12.0), // Sudut kanan atas
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5.0,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // foto
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(2.0), // Ketebalan border
                          decoration: BoxDecoration(
                            color: Colors.white, // Warna border putih
                            borderRadius: BorderRadius.circular(
                                22.0), // Radius sudut untuk border
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                                20.0), // Radius sudut untuk gambar
                            child: Image.network(
                              fotoInstansi,
                              width: 30,
                              height: 30,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    // foto 2
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius:
                              BorderRadius.circular(20.0), // Radius sudut
                          child: Image.network(
                            foto,
                            width: 30,
                            height: 30,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${siswa['nama']}',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '${siswa['oncard']['account_number']} | ${siswa['oncard']['nama_instansi']} ',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // bawah
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white, // Warna latar belakang
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12.0), // Sudut kiri atas
                    bottomRight: Radius.circular(12.0), // Sudut kanan atas
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5.0,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // 1
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Tagihan Pendidikan',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          'Rp${siswa['tagihan']['belum_bayar']}',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 30),
                    // 2
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Absensi Siswa',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          '0%',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 30),
                    // 3
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Saldo Kartu',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          'Rp${siswa['oncard']['balance']}',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 30),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

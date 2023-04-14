import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:utsmobile/pages/login.dart';
import 'package:utsmobile/pages/menu_main.dart';

class profilAja extends StatelessWidget {
  const profilAja({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.purple,
          ),
          child: Icon(
            Icons.favorite_border,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MenuMain(),
                  ),
                );
              },
              icon: Icon(Icons.home),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.person),
            )
          ],
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height * 0.5,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/2.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/profil1.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "Chico Alifian",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "~ Pen Cepet-Cepet Luluss 🐣",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 50,
            left: 10,
            right: 10,
            child: Padding(
              padding: const EdgeInsets.all(13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 120,
                        width: 138,
                        decoration: BoxDecoration(
                            color: Color(0xFFA4BDFF),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 5,
                                  offset: const Offset(0, 2))
                            ]),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                padding:
                                    const EdgeInsets.only(right: 10, top: 10),
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/plant_light_blue_bg.png'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Plant Choice',
                                    style: GoogleFonts.notoSans(
                                        color: Colors.black, fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 120,
                        width: 138,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 249, 250, 250),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  spreadRadius: 4,
                                  blurRadius: 6,
                                  offset: const Offset(0, 2))
                            ]),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                padding:
                                    const EdgeInsets.only(right: 10, top: 10),
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/lamp_light_gray_bg.png'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Best Lamps',
                                    style: GoogleFonts.notoSans(
                                        color: Colors.black, fontSize: 18),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

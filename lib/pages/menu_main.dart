import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:utsmobile/pages/profil.dart';

class MenuMain extends StatelessWidget {
  const MenuMain({super.key});

  Widget Kategorih() {
    Widget kategoriMain(String img, String text) {
      return Stack(children: [
        Container(
          child: Container(
            margin: EdgeInsets.only(right: 13),
            height: 100,
            width: 135,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(right: 10, top: 10),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(img), fit: BoxFit.cover),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        text,
                        style: GoogleFonts.notoSans(
                            color: Colors.black, fontSize: 16),
                      ),
                      Icon(
                        Icons.arrow_forward_sharp,
                        size: 20,
                        color: Colors.purple,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ]);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 12,
        ),
        Container(
          margin: EdgeInsets.only(left: 20, bottom: 10),
          child: Text('Category',
              style: GoogleFonts.notoSans(
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontSize: 22,
              )),
        ),
        Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 15,
                ),
                kategoriMain('assets/plant_white_bg.png', 'Plant'),
                kategoriMain('assets/lamp_white_bg.png', 'Lamp'),
                kategoriMain('assets/chair_white_bg.png', 'Chair'),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget hotHot() {
    Widget isi(String img, String text, String harga) {
      return Container(
        margin: EdgeInsets.only(bottom: 20, left: 22),
        child: Stack(
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              width: 145,
              height: 185,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(img),
                  ),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 4,
                        blurRadius: 6,
                        offset: Offset(0, 2))
                  ]),
            ),
            Padding(
              padding: EdgeInsets.only(top: 130),
              child: Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                alignment: Alignment.bottomCenter,
                height: 55,
                width: 145,
                decoration: BoxDecoration(
                    color: Colors.black54.withOpacity(0.4),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15))),
                child: Padding(
                  padding: EdgeInsets.only(left: 6),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            text,
                            style: GoogleFonts.notoSans(
                                fontSize: 16,
                                color: Color(0xffFFFFFF).withOpacity(0.5)),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          harga,
                          style: GoogleFonts.notoSans(
                              fontSize: 16,
                              color: Color(0xffFFFFFF).withOpacity(0.5)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
          width: 5,
        ),
        Container(
          margin: EdgeInsets.only(left: 20, bottom: 10),
          child: Text('Hot Item',
              style: GoogleFonts.notoSans(
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontSize: 22,
              )),
        ),
        Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  isi('assets/favorite_img_4.jpg', 'Cactus', '\$18'),
                  isi('assets/favorite_img_2.jpg', 'Traditional Chair', '\$24'),
                ],
              ),
            ),
          ),
        ),
        Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              isi('assets/favorite_img_3.jpeg', 'Wooden Chair', '\$44'),
              isi('assets/favorite_img_1.jpg', 'Elegant Lamp', '\$13'),
            ],
          ),
        ),
        Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              isi('assets/favorite_img_5.jpg', 'Beach Beautiful', '\$36'),
              isi('assets/favorite_img_6.jpg', 'Architectural', '\$30'),
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //appbar
      appBar: PreferredSize(
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Color.fromARGB(123, 152, 0, 190).withOpacity(1)),
            ],
            gradient: LinearGradient(colors: [
              Color.fromARGB(0, 101, 0, 155),
              Color.fromARGB(0, 159, 1, 250),
            ]),
          ),
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 10, left: 12, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: 28,
                      ),
                      Expanded(
                          child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Discover',
                          style: GoogleFonts.notoSans(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                      )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                            size: 26,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Material(
                        borderRadius: BorderRadius.circular(10),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Container(
                          color: Colors.white,
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.search_rounded,
                                color: Colors.black,
                                size: 26,
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              contentPadding: EdgeInsets.all(8),
                              hintText: 'What are you looking for?',
                              hintStyle:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        preferredSize: const Size.fromHeight(130),
      ),
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
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SingleChildScrollView(
                scrollDirection: Axis.horizontal, child: Kategorih()),
            SizedBox(
              height: 10,
            ),
            hotHot(),
          ],
        ),
      )),

      bottomNavigationBar: Stack(
        children: [
          Container(
            child: BottomAppBar(
              shape: CircularNotchedRectangle(),
              color: Color.fromARGB(255, 255, 255, 255),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.home),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => profilAja(),
                        ),
                      );
                    },
                    icon: Icon(Icons.person),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:utsmobile/pages/menu_main.dart';

class loginAja extends StatefulWidget {
  const loginAja({super.key});

  @override
  State<loginAja> createState() => _loginAjaState();
}

class _loginAjaState extends State<loginAja> {
  bool visibilityPass = false;

  final String myUser = 'chico';
  final String myPass = '12345';

  TextEditingController cUser = TextEditingController();
  TextEditingController cPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/wp1.jpg'), fit: BoxFit.cover),
              ),
              child: Container(
                padding: EdgeInsets.only(top: 120, left: 10, right: 10),
                child: Column(
                  children: [
                    RichText(
                        text: TextSpan(
                            text: "Your Future",
                            style: GoogleFonts.notoSans(
                                fontSize: 24, color: Colors.white))),
                    SizedBox(
                      width: 35,
                    ),
                    Text(
                      'Furniture',
                      style: GoogleFonts.notoSans(
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      height: 5,
                      width: 90,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    SizedBox(
                      height: 30,
                    ),
// Bungkusan Username & PW
                    Positioned(
                      child: Container(
                        height: 245,
                        width: MediaQuery.of(context).size.width - 40,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: const Color.fromARGB(255, 53, 51, 49)
                                      .withOpacity(0.4),
                                  spreadRadius: 7,
                                  blurRadius: 15),
                            ]),
                        padding: EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Text(
                                  'Login First',
                                  style: GoogleFonts.notoSans(
                                      fontSize: 20, color: Color(0xFFFF00F7)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
// Text Field Username
                            Container(
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              child: TextFormField(
                                controller: cUser,
                                decoration: InputDecoration(
                                  labelText: 'Username',
                                  hintText: 'Hallo',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12)),
                                  prefixIcon: Icon(Icons.person),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
// Text Field Password
                            Container(
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              child: TextFormField(
                                controller: cPass,
                                obscureText: !visibilityPass,
                                decoration: InputDecoration(
                                    labelText: 'Password',
                                    hintText: 'Masukan Password',
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    prefixIcon: Icon(Icons.lock),
                                    suffixIcon: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            visibilityPass = !visibilityPass;
                                          });
                                        },
                                        icon: visibilityPass
                                            ? Icon(Icons.visibility)
                                            : Icon(Icons.visibility_off))),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
// Login Button
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width - 40,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Color(0xFFFF00F7),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 255, 0, 179)
                                .withOpacity(0.3),
                            spreadRadius: 5,
                            blurRadius: 12,
                          ),
                        ],
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          cekLogin(context);
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.purple,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  void cekLogin(BuildContext context) {
    // final String myUser = 'chico';
    // final String myPass = '12345';

    if (cUser.text == myUser && cPass.text == myPass) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => MenuMain(),
          ));
    } else if (cUser.text.isEmpty || cPass.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('User dan Password harus di isi'),
          backgroundColor: Colors.purple,
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('User atau Password Salah'),
          backgroundColor: Colors.purple,
        ),
      );
    }
  }
}

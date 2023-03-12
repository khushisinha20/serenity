import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        margin: const EdgeInsets.all(24),
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Column(
          children: [
            _header(context),
          ],
        ),
      )),
    );
  }

  _header(context) {
    return Column(
      children: [
        Text("Welcome, Name",
            style: GoogleFonts.merriweatherSans(
                textStyle: const TextStyle(
              fontSize: 20,
              color: Color.fromRGBO(101, 93, 187, 1),
              fontWeight: FontWeight.w500,
            ))),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 250,
            child: Image.asset(
              "assets/home_page_image.png",
              fit: BoxFit.contain,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
          child: Text("Sorting through negative emotions?",
              style: GoogleFonts.merriweatherSans(
                  textStyle: const TextStyle(
                fontSize: 20,
                color: Color.fromRGBO(101, 93, 187, 1),
              ))),
        ),
        Text("Start your journey with us.",
            style: GoogleFonts.merriweatherSans(
                textStyle: const TextStyle(
              fontSize: 15,
              color: Color.fromRGBO(101, 93, 187, 1),
            ))),
      ],
    );
  }
}

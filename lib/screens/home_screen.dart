import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pushable_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.all(24),
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            children: [
              _header(context),
            ],
          ),
        ),
        SizedBox(
            width: 200,
            child: PushableButton(
              child: Text(
                'Chat Bot',
                style: (TextStyle(
                  color: Color.fromRGBO(101, 93, 187, 1),
                  fontSize: 20,
                )),
              ),
              height: 70,
              elevation: 5,
              hslColor: HSLColor.fromColor(Color.fromRGBO(185, 243, 228, 1)),
              shadow: BoxShadow(
                color: Color.fromRGBO(185, 243, 228, 0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 2),
              ),
              onPressed: () {},
            ))
      ],
    ));
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
          padding: const EdgeInsets.all(2.0),
          child: SizedBox(
            height: 200,
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

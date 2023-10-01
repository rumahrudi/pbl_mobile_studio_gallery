import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pbl_studio_gallery/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(50, 19, 19, 1.0),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 25,
              ),
              // shop name
              Text(
                'SnapCuisine',
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 28,
                  color: Color.fromRGBO(249, 245, 240, 1.0),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              // icon
              // Padding(
              //   padding: const EdgeInsets.all(50.0),
              //   child: Image.asset('lib/images/logo.png'),
              // ),
              Center(
                child: FittedBox(
                  fit: BoxFit
                      .contain, // Mengubah ukuran gambar secara proporsional
                  child: SizedBox(
                    width: 250, // Atur lebar gambar sesuai kebutuhan
                    height: 250, // Atur tinggi gambar sesuai kebutuhan
                    child: Image.asset(
                      'lib/images/logo.png', // Ganti dengan path gambar Anda
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              // title
              Text(
                "Capturing the Essence of Food",
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 44,
                  color: Color.fromRGBO(249, 245, 240, 1.0),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // subtitle
              Text(
                "Showcasing Culinary Artistry Through Stunning Imagery",
                style: TextStyle(
                  color: Color.fromRGBO(249, 245, 240, 1.0),
                  height: 2,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              // get started button
              MyButton(
                text: 'Get Started',
                onTap: () {
                  //  go to homepage
                  Navigator.pushNamed(context, "/homepage");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

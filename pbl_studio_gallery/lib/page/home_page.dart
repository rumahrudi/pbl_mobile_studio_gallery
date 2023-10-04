import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pbl_studio_gallery/components/button.dart';
import 'package:pbl_studio_gallery/components/photo_tile.dart';
import 'package:pbl_studio_gallery/models/photo.dart';
import 'package:pbl_studio_gallery/theme/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // * Photo Package
  List photoPackage = [
    // * Basic
    Photo(
        name: 'Basic',
        price: '100k',
        imagePath: 'lib/images/donut_basic.png',
        rating: '4.5'),
    // * Standard
    Photo(
        name: 'Standard',
        price: '250k',
        imagePath: 'lib/images/donout.png',
        rating: '4.5'),
    // * Premium
    Photo(
        name: 'Premium',
        price: '300k',
        imagePath: 'lib/images/donout_premium.png',
        rating: '4.5')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title: Text(
          'SnapCuisine',
          style: TextStyle(color: Colors.grey[900]),
        ),
      ),
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //* Promo Banner
          Container(
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // * Promo Massage
                    Text(
                      "Get 32% Promo",
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 20,
                        color: fourthColor,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // * Redeem Button
                    MyButton(
                      text: 'Redeem',
                      onTap: () {},
                    ),
                  ],
                ),
                // * Image
                Image.asset(
                  'lib/images/logo.png',
                  height: 100,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          // * Search Bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'Search Here',
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          // * Package list

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Photo Package',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
                fontSize: 18,
              ),
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          Container(
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: photoPackage.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: PhotoTile(
                    photo: photoPackage[index],
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Gallery',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // * Gallery
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'lib/images/donout.png',
                      height: 60,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nature',
                          style: GoogleFonts.dmSerifDisplay(fontSize: 18),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          '\Rp50k',
                          style: TextStyle(
                            color: Colors.grey[700],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_right_outlined,
                  color: Colors.grey,
                  size: 28,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

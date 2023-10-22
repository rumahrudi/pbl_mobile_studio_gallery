import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pbl_studio_gallery/components/button.dart';
import 'package:pbl_studio_gallery/models/photo.dart';
import 'package:pbl_studio_gallery/theme/colors.dart';

class PackageDetail extends StatefulWidget {
  final Photo photo;

  const PackageDetail({super.key, required this.photo});

  @override
  State<PackageDetail> createState() => _PackageDetailState();
}

class _PackageDetailState extends State<PackageDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[900],
      ),
      body: Column(
        children: [
          // * listview of photo detail
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ListView(
                children: [
                  // * image
                  Image.asset(
                    widget.photo.imagePath,
                    height: 200,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  // * rating
                  Row(
                    children: [
                      // * star icon
                      Icon(
                        Icons.star,
                        color: Colors.yellow[800],
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      // * number
                      Text(
                        widget.photo.rating,
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // * food name
                  Text(
                    widget.photo.name,
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 28,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  // * description
                  Text(
                    'Description',
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam mollis laoreet arcu, sit amet imperdiet dolor cursus nec. Mauris volutpat ante nec massa consectetur, in accumsan orci ornare. Nulla ante magna, dictum ac odio semper, vehicula fringilla nulla. Phasellus malesuada lectus commodo lectus euismod, eget ullamcorper ligula vestibulum.',
                    style: TextStyle(
                        color: Colors.grey[600], fontSize: 14, height: 2),
                  )
                ],
              ),
            ),
          ),
          // * price
          Container(
            color: primaryColor,
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  // * price
                  Row(
                    children: [
                      // * price
                      Text(
                        '\Rp' + widget.photo.price,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      )
                      // * quantity
                    ],
                  ),
                  SizedBox(height: 20),
                  // * button
                  MyButton(
                    text: 'Add to cart',
                    onTap: () {},
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pbl_studio_gallery/models/photo.dart';

class PhotoTile extends StatelessWidget {
  final Photo photo;
  final void Function()? onTap;

  const PhotoTile({super.key, required this.photo, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(20),
          ),
          margin: const EdgeInsets.only(left: 20, right: 25),
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // * image
              Image.asset(
                photo.imagePath,
                height: 140,
              ),
              // * name
              Text(
                photo.name,
                style: GoogleFonts.dmSerifDisplay(fontSize: 20),
              ),
              // * price+rating
              SizedBox(
                width: 160,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // * price
                    Text(
                      '\Rp' + photo.price,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[700],
                      ),
                    ),
                    // * rating
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow[800],
                        ),
                        Text(
                          photo.rating,
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
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

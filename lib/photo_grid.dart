import 'package:flutter/material.dart';

class PhotoGrid extends StatelessWidget {
  final List<String> imageUrls;

  const PhotoGrid({super.key, required this.imageUrls});
  



  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: imageUrls.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.grey[300],
            image: DecorationImage(
              image: NetworkImage(imageUrls[index]),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
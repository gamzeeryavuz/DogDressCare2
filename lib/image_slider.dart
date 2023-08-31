import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImageSlider extends StatefulWidget {
  final List<String> imageUrls;

  final ValueChanged<int>? onImageChanged;

  const ImageSlider({
    Key? key,
    required this.imageUrls,
    required this.onImageChanged, required PageController pageController,
  }) : super(key: key);

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int _currentImageIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(); // page controller başlatma 

  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: widget.imageUrls.length,
      itemBuilder: (context, index, realIndex) {
        return Image.asset(widget.imageUrls[index], fit: BoxFit.fill);
      },
      options: CarouselOptions( 
          
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          enlargeCenterPage: true,
          onPageChanged: (index, reason) {
            widget.onImageChanged?.call(index); // call bcak çağırma
          }),
    );
  }
}

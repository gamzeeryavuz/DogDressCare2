import 'package:flutter/material.dart';
import 'package:dogcare/custom_shaped.dart';
import 'package:dogcare/image_slider.dart';
import 'package:dogcare/TrendPage.dart';
import 'package:dots_indicator/dots_indicator.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentImageIndex = 0;

  List<String> imageUrls = [
    'assets/images/kopek.png',
    'assets/images/rectangle1.png',
    'assets/images/rectangle2.png',
    'assets/images/rectangle3.png',
  ];
  List<Color> dotColors = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.orange,
  ];

  bool isTextTapped = false;

  void onTapText() {
    setState(() {
      isTextTapped = !isTextTapped;
    });
  }

  void onTapButton() {
    //Butona tıklayınca yapılacak işlemler
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TrendPage()),
    );
  }

  void goToTrendPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TrendPage()),
    );
  }

  void ImageChanged(int index) {
    setState(() {
      _currentImageIndex = index;
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Dress'),
      ),
      backgroundColor: Color(0xFF064BB5), // Tüm sayfanın arka plan rengi
      body: Stack(
        children: [
          Align(
            alignment: Alignment(-1.0, -1.1),
            child: Image.asset(
              'assets/images/Union.png',
              width: 180,
              height: 180,
            ),
          ),
          Align(
              alignment: Alignment(1.2, -1.0),
              child: Image.asset(
                'assets/images/hearts.png',
                width: 200,
                height: 150,
              )),
          Stack(
            children: [
              Positioned(
                top: 25,
                left: 80,
                child: InkWell(
                  onTap: () {
                    // resme tıklanınca yapılacak işlem
                  },
                  child: Container(
                      color: Colors.transparent,
                      child: Image.asset(
                        'assets/images/choose.png',
                        width: 260,
                        height: 280,
                      )),
                ),
              ),
              Positioned(
                  top: 230,
                  left: 15,
                  right: 15,
                  child: InkWell(
                      onTap: onTapText,
                      child: Center(
                        child: Text(
                            'Check our latest fashion collection For\n Your Most Loyal Friend  ',
                            style: TextStyle(
                              fontSize: 20,
                              color: isTextTapped ? Colors.blue : Colors.white,
                              decoration: isTextTapped
                                  ? TextDecoration.underline
                                  : TextDecoration.none,
                            )),
                      ))),
              BottomButton(onTap: onTapButton, buttonTitle: 'Lets Explore'),
            ],
          ),
          Positioned(
            bottom: -340,
            right: -310,
            child: Container(
              width: 800,
              height: 900,
              child: ImageSlider(
                imageUrls: imageUrls,
                pageController: _pageController,
                onImageChanged: (index) {
                  _currentImageIndex = index;
                },
              ),
            ),
          ),
          Positioned(
            bottom: 40,
            left: 0,
            right: 0,
            child: DotsIndicator(
              dotsCount: imageUrls.length,
              position: _currentImageIndex.toInt(),
              decorator: DotsDecorator(
                size: const Size.square(9.0),
                activeSize: const Size(18.0, 9.0),
                color: Colors.blue, 
                activeColor:dotColors[_currentImageIndex], 
                

              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => TrendPage()));
        },
        backgroundColor: Color(0XFFBCFF5B),
        child: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}

import 'dart:math';

import 'package:dogcare/category.dart';
import 'package:dogcare/homepage.dart';
import 'package:dogcare/homescreen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:dogcare/photo_grid.dart';

class TrendPage extends StatefulWidget {
  @override
  State<TrendPage> createState() => _TrendPageState();
}

class _TrendPageState extends State<TrendPage> {
  bool isImageTapped = false;
  bool isSwipeTapped = false;

  bool isTrendingTextTapped = false;
  bool isButtonTapped = false;

  final List<String> imageUrlsRectangle = [
    'assets/images/rectangle1.png',
    'assets/images/rectangle2.png',
    'assets/images/rectangle3.png',
  ];

  int currentIndexRec = 0;

  void onTapImage() {
    setState(() {
      isImageTapped = !isImageTapped;
    });
  }

  void onTapIcon1() {
    // icon 1 e tıklayınca yapılacak işlemler
  }
  void onTapIcon2() {
    // icon 2 ye tıklanınca yapılacak işlemler
  }

  void _toogleButtonTapped() {
    setState(() {
      isButtonTapped = !isButtonTapped;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F7FB), // arka plan rengi
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Positioned(
              top: 50,
              left: 0,
              right: 300,
              bottom: 750,
              child: InkWell(
                onTap: onTapImage,
                child: Container(
                  width: 40,
                  height: 100,
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/hello.png',
                  ),
                ),
              ),
            ),
            Positioned(
                top: 20,
                right: 60,
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    },
                    child: Image.asset(
                      'assets/images/category_icon.png',
                      width: 100,
                      height: 100,
                    ))),
            Positioned(
                top: 20,
                right: 10, // İkinci ikonun sağa oln uzaklığı
                child: GestureDetector(
                    onTap: onTapIcon1,
                    child: Image.asset(
                      'assets/images/shoppingicon.png',
                      width: 100,
                      height: 100,
                    ))),
            Positioned(
                top: MediaQuery.of(context).size.height /
                    7, // ortaya gelecek şekilde
                left: 40,
                right: 40, // sağ boşluk
                child: Image.asset(
                  'assets/images/yesilres.png',
                  width: MediaQuery.of(context).size.width -
                      80, // sol ve sağdan boşluk
                  height: 200, // resmin uzunluğu
                )),
            Positioned(
              top: MediaQuery.of(context).size.height /
                  4, // Resmi yukarı taşımak için değeri düşürebilirsiniz
              left: 40,
              right: 40,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => YourDesiredPage(),
                      ));
                },
                child: MouseRegion(
                  onEnter: (_) {
                    // Fare resmin üzerine geldiğinde yapılacak işlemler
                  },
                  onExit: (_) {
                    // Fare resmin üzerinden çıktığında yapılacak işlemler
                  },
                  child: Column(
                    children: [
                      SizedBox(height: 100),
                      Text(
                        'Trending',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF4A4A4A),
                          decoration: isTrendingTextTapped
                              ? TextDecoration.underline
                              : TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              right: 10,
              left: 30,
              top: MediaQuery.of(context).size.height / 2,
              child: Image.asset('assets/images/rectangle3.png'),
              height: 300,
            ),
            Positioned(
              right: 10,
              top: MediaQuery.of(context).size.height / 2,
              child: Image.asset('assets/images/rectangle2.png'),
              width: MediaQuery.of(context).size.width - 5,
              height: 300,
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 2,
              child: Image.asset('assets/images/rectangle1.png'),
              width: MediaQuery.of(context).size.width - 5,
              height: 350,
            ),
            /*Positioned(
              bottom: 65,
              // Resmi yukarı taşımak için değeri düşürebilirsiniz
              left: 40,
              right: 40,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => YourDesiredPage(),
                      ));
                },
                child: MouseRegion(
                  onEnter: (_) {
                    // Fare resmin üzerine geldiğinde yapılacak işlemler
                  },
                  onExit: (_) {
                    // Fare resmin üzerinden çıktığında yapılacak işlemler
                  },
                  child: Column(
                    children: [
                      SizedBox(height: 100),
                      Text(
                        'Swipe For More ',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          decoration: isTrendingTextTapped
                              ? TextDecoration.underline
                              : TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),  
            */
            Positioned(
              top: 680,
              // Resmi yukarı taşımak için değeri düşürebilirsiniz
              left: 40,
              right: 40,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ));
                },
                child: MouseRegion(
                  onEnter: (_) {
                    // Fare resmin üzerine geldiğinde yapılacak işlemler
                  },
                  onExit: (_) {
                    // Fare resmin üzerinden çıktığında yapılacak işlemler
                  },
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Positioned(
                          bottom: 0,
                          child: Container(
                              width: MediaQuery.of(context)
                                  .size
                                  .width, // sayfanmın genişliği kadar
                              height: 100,
                              alignment: Alignment.center,
                              child: Text('Swipe for More ',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0XFF4A4A4A),
                                    decoration: isSwipeTapped
                                        ? TextDecoration.underline
                                        : TextDecoration.none,
                                  ))))
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: -10,
              left: (MediaQuery.of(context).size.width -
                      MediaQuery.of(context).size.width +
                      10) /
                  2,
              child: Image.asset('assets/images/button.png'),
              width: MediaQuery.of(context).size.width - 10,
              height: 90,
            )
          ],
        ),
      ),
      floatingActionButton: Padding(
          padding: EdgeInsets.only(right: 165, top: 190),
          child: FloatingActionButton(
            onPressed: () {
              setState(() {
                if (currentIndexRec < imageUrlsRectangle.length - 1) {
                  currentIndexRec++;
                } else {
                  currentIndexRec = 0;
                }
              });
              //Yönlendirme İşlemi
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            backgroundColor: Colors.white,
            elevation: 8,
            mini: true,
            child: Transform.rotate(
              angle: -pi / 2,
              child: Icon(Icons.arrow_forward_ios),
            ),
          )),
    );
  }
}

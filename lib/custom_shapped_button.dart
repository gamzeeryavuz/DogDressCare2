import 'package:flutter/material.dart';
import 'package:flutter_lints/flutter.yaml'; 

class CustomShapedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Shaped Button'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            // Düğmeye tıklandığında yapılacak işlemler
            print('Button tapped');
          },
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            
          ),
        ),
      ),
    );
  }
}

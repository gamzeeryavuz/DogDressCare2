import 'package:flutter/material.dart';
import 'package:dogcare/TrendPage.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({super.key, required this.onTap, required this.buttonTitle});
  final VoidCallback onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context ,
        MaterialPageRoute(builder : (context)=> TrendPage()));
      
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100),
              topRight: Radius.circular(100),
              bottomRight: Radius.circular(100),
              //sadece alt kenarı köseli yapmak için bottomrigth köseli yapmıyoruz.
            ),
            color: Color(0XFFBCFF5B),
          ),
          margin: EdgeInsets.only(top: 350, left: 100, right: 100),
          padding: EdgeInsets.only(bottom: 1.0),
          width: double.infinity,
          height: 60,
          child: Center(
            child: Text(buttonTitle,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                )),
          ),
        ),
      ),
    );
   
  }
}

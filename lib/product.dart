

import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price,  id;
  final Color color;

  Product(
      {required this.image,
      required this.title,
      required this.description,
      required this.price,
      
      required this.id,
      required this.color});
}

List<Product> product = [
  Product(
      id: 1,
      title: "Sunglasses",
      price: 234,
    
      description: dummyText,
      image: "assets/images/kopek.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Dress",
      price: 234,
    
      description: dummyText,
      image: "assets/images/rectangle1.png",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Sunglasses",
      price: 234,
      
      description: dummyText,
      image: "assets/images/rectangle2.png",
      color: Color(0xFF064BB5)),
  Product(
      id: 4,
      title: "Accessuar",
      price: 234,
      
      description: dummyText,
      image: "assets/images/rectangle3.png",
      color: Color(0xFFE6B398)),
  
  Product(
    id: 5,
    title: "Sunglasses",
    price: 234,
    
    description: dummyText,
    image: "assets/images/kopek.png",
    color: Color(0xFFAEAEAE),
  ),
    Product(
    id: 6,
    title: "Sunglasses",
    price: 234,
   
    description: dummyText,
    image: "assets/images/footwear.png",
    color: Color(0xFFAEAEAE),
  ),
    Product(
      id: 7,
      title: "Sunglasses",
      price: 234,
      
      description: dummyText,
      image: "assets/images/kopek.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 8,
      title: "Dress",
      price: 234,
     
      description: dummyText,
      image: "assets/images/rectangle1.png",
      color: Color(0xFFD3A984)),
  Product(
      id: 9,
      title: "Sunglasses",
      price: 234,
      
      description: dummyText,
      image: "assets/images/rectangle2.png",
      color: Colors.white),
  Product(
      id: 10,
      title: "Accessuar",
      price: 234,
      
      description: dummyText,
      image: "assets/images/rectangle3.png",
      color: Color(0xFFE6B398)),
  
  Product(
    id: 11,
    title: "Sunglasses",
    price: 234,
    
    description: dummyText,
    image: "assets/images/kopek.png",
    color: Color(0xFFAEAEAE),
  ),
    Product(
    id: 12,
    title: "Sunglasses",
    price: 234,
    
    description: dummyText,
    image: "assets/images/footwear.png",
    color: Color(0xFFAEAEAE),
  ),
 
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
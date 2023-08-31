import 'package:flutter/material.dart';
import 'package:dogcare/product.dart';

class ShoppingCartPage extends StatefulWidget {
  static List<Product> cartItems = [];

  @override
  _ShoppingCartPageState createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: ShoppingCartPage.cartItems.length,
        itemBuilder: (BuildContext context, int index) {
          Product product = ShoppingCartPage.cartItems[index];
          return Card(
            elevation: 4,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              title: Text(product.title), // Ürün adı
              subtitle: Text('${product.price} \$'), // Ürün fiyatı
              // ... diğer özellikler 
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  setState(() {
                    ShoppingCartPage.cartItems.removeAt(index);
                  });
                },
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            // Ödeme işlemleri için gerekli kodu burada gerçekleştirin
          },
          style: ElevatedButton.styleFrom(
            minimumSize: Size(double.infinity, 48),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            backgroundColor: Colors.green, // Ödeme butonunun rengi
          ),
          child: Text(
            "Ödemeye Git",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

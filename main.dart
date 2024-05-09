import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoes',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: const MyHomePage(title: 'Shoes'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(title),
            Spacer(), 
            CircleAvatar(
              radius: 20, 
              backgroundColor: Colors.grey[300], 
              child:Icon(
                Icons.person,
                color: Colors.black, 
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ShoeCard(
            imageUrl:
                "adidassamba.jpg",
            shoeName: 'Adidas Samba B12786',
            shoePrice: 'Rp. \8.999.000',
            backgroundColor:
                Colors.purple.withOpacity(0.2), 
          ),
          ShoeCard(
            imageUrl:
                'conversecanvasmilitary.jpg',
            shoeName: 'Converse Canvas Military',
            shoePrice: 'Rp. \7.000.000',
            backgroundColor: Color.fromARGB(255, 216, 88, 50).withOpacity(0.2), 
          ),
          ShoeCard(
            imageUrl:
                'niketravisscoot.jpeg',
            shoeName: 'Nike Travis Scoot',
            shoePrice: 'Rp. \11.000.000',
            backgroundColor: Color.fromARGB(255, 31, 35, 0).withOpacity(0.2), 
          ),
          ShoeCard(
            imageUrl:
                'vansnightmare.png',
            shoeName: 'Vans Nightmare',
            shoePrice: 'Rp. \4.500.000',
            backgroundColor: Color.fromARGB(255, 0, 96, 250).withOpacity(0.2), // Background cyan
          ),

          
        ],
      ),
    );
  }
}

class ShoeCard extends StatelessWidget {
  final String imageUrl;
  final String shoeName;
  final String shoePrice;
  final Color backgroundColor;

  const ShoeCard({
    required this.imageUrl,
    required this.shoeName,
    required this.shoePrice,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    shoeName,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    shoePrice,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white, 
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 16.0), 
            // 
            Container(
              width: 100,
              height: 100,
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
     ),
);
}
}

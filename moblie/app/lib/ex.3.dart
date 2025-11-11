import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
enum ProductType {
  dart(
    title: 'Dart',
    description: 'the best object language',
    imagePath: 'assets/dart.png',
  ),
  flutter(
    title: 'Flutter',
    description: 'the best mobile widget library',
    imagePath: 'assets/flutter.png',
  ),
  firebase(
    title: 'Firebase',
    description: 'the best cloud database',
    imagePath: 'assets/firebase.png',
  );

  final String title;
  final String description;
  final String imagePath;

  const ProductType({
    required this.title,
    required this.description,
    required this.imagePath,
  });
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title:Text(
                  "Products",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ) ,),
        backgroundColor:  Colors.blue, 
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0), 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                
                SizedBox(height: 20),
                ProductCard(type: ProductType.dart),
                SizedBox(height: 20),
                ProductCard(type: ProductType.firebase),
                SizedBox(height: 20),
                ProductCard(type: ProductType.flutter),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {

  final ProductType type;

  const ProductCard({
    super.key,
    required this.type
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset(
              type.imagePath,
              width: 80,
              height: 80,
            ),
            const SizedBox(height: 12),
            Text(
              type.title,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              type.description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

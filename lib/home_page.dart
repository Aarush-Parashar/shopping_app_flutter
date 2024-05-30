import 'package:flutter/material.dart';
import 'package:shopping_app_flutter/product_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const ProductList(),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              currentPage = value;
            });
          },
          currentIndex: currentPage,
          items: const [
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.home,
                size: 45,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.shopping_bag,
                size: 45,
              ),
            )
          ],
        ),
      ),
    );
  }
}

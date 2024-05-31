import 'package:flutter/material.dart';
import 'package:shopping_app_flutter/cart_page.dart';
import 'package:shopping_app_flutter/product_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;

  List<Widget> pages = const [ProductList(), CartPage()];

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentPage,
        children: pages,
      ),
      bottomNavigationBar: SizedBox(
        height: 100,
        child: BottomNavigationBar(
          iconSize: 45,
          selectedFontSize: 15,
          unselectedFontSize: 15,
          onTap: (value) {
            setState(() {
              currentPage = value;
            });
          },
          currentIndex: currentPage,
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Cart',
              icon: Icon(
                Icons.shopping_bag,
              ),
            )
          ],
        ),
      ),
    );
  }
}

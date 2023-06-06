import 'package:flutter/material.dart';
import 'package:uzum/components/constants/images.dart';
import 'package:uzum/ui/bottom_ui/tabs/account_page.dart';
import 'package:uzum/ui/bottom_ui/tabs/favorite_page.dart';
import 'package:uzum/ui/bottom_ui/tabs/home_page.dart';
import 'package:uzum/ui/bottom_ui/tabs/search_page.dart';
import 'package:uzum/ui/bottom_ui/tabs/shopping_basket_page.dart';

import '../../components/constants/mediaqueries.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    List pages = [
      HomePage(),
      SearchPage(),
      ShoppingBasketPage(),
      FavouritePage(),
      AccountPage()
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Container(
            child: Center(
                child: Container(
              margin: EdgeInsets.symmetric(horizontal: 12),
              width: m_w(context) * 0.9,
              height: m_w(context) * 0.08,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey.withOpacity(0.3)),
              child: Center(
                child: Row(
                  children: [
                    const Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 4),
                      height: 60,
                      width: m_w(context) * 0.8,
                      child: const Center(
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Mahsulot va toifalarni qidirish',
                              border: InputBorder.none),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )),
          )
        ],
      ),
      body: pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentPage,
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Bosh sahifa"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Qidiruv"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket), label: "Savatcha"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline), label: "Istaklar"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Kabinet"),
        ],
      ),
    );
  }
}

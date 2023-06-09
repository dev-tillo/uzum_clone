import 'package:flutter/material.dart';
import 'package:uzum/components/constants/images.dart';
import 'package:uzum/components/constants/mediaqueries.dart';
import 'package:uzum/ui/bottom_ui/tabs/widgets/page_view_widget.dart';
import 'package:uzum/ui/bottom_ui/tabs/widgets/product_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: m_w(context) * 0.5.toDouble(),
            child: PageView(
              children: [
                PageViewWidget(image: AppImages.pv_1),
                PageViewWidget(image: AppImages.pv_2),
                PageViewWidget(image: AppImages.pv_3),
                PageViewWidget(image: AppImages.pv_4)
              ],
            ), //PageView
          ),
          SizedBox(
            height: 12,
          ),
          DefaultTabController(
            length: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TabBar(
                    labelStyle: TextStyle(color: Colors.black),
                    unselectedLabelStyle: TextStyle(color: Colors.black),
                    tabs: [
                      Tab(
                        child: Text(
                          "Yozgi savdo",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Tab(
                        child: Text("Mashhur",
                            style: TextStyle(color: Colors.black)),
                      ),
                      Tab(
                        child: Text("Yangi",
                            style: TextStyle(color: Colors.black)),
                      )
                    ]),
                Container(
                  padding: const EdgeInsets.all(8),
                  width: m_w(context).toDouble(),
                  height: m_w(context) * 1.toDouble(),
                  child: TabBarView(children: [
                    GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2, childAspectRatio: 0.5),
                        itemBuilder: (context, index) => const ProductWidget()),
                    GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2, childAspectRatio: 0.5),
                        itemBuilder: (context, index) => const ProductWidget()),
                    GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2, childAspectRatio: 0.5),
                        itemBuilder: (context, index) => const ProductWidget()),
                  ]),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

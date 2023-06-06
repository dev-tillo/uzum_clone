import 'package:flutter/material.dart';
import 'package:uzum/components/constants/mediaqueries.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({Key? key}) : super(key: key);

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: EdgeInsets.all(2),
        height: m_w(context) * 0.8.toDouble(),
        width: m_w(context) * 0.45.toDouble(),
        child: Column(
          children: [
            Container(
              width: m_w(context) * 0.45.toDouble(),
              height: m_w(context) * 0.45.toDouble(),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://loremflickr.com/320/240"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(8)),
            ),
            SizedBox(
              height: 4,
            ),
            Text("Grechka Mistral Yadrica , 900 g"),
            SizedBox(
              height: 28,
            ),
            Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text("12.000", style: TextStyle(),),
                    Text("12.000")
                  ],
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.circular(20),
                      border:
                      Border.all(color: Colors.grey)),
                  child: Center(
                    child:
                    Icon(Icons.shopping_bag_outlined),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

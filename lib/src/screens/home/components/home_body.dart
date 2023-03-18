import 'package:flutter/material.dart';

import '../../../../styles_const.dart';
import '../../screens.dart';

class HomeBody extends StatelessWidget {
  static String routeName = '/homebody';
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Find_Your_Clothes
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: const Text('Find Your Clothes ',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ),

          //Custom_Card
          const SizedBox(height: 40),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                width: double.infinity,
                height: 300,
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(16)),
                child: Row(children: [
                  Expanded(
                    child: Column(
                      children: [
                        const Text(
                          'Dec 16 - Dec 31',
                          style: TextStyle(color: Colors.amber, fontSize: 24),
                        ),
                        const SizedBox(height: 6),
                        const Text('25 % OFF',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 24)),
                        const SizedBox(height: 6),
                        const Text('Super Discount',
                            style:
                                TextStyle(color: Colors.black, fontSize: 24)),
                        const SizedBox(height: 14),
                        InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(kBorderRadius),
                          child: Container(
                            width: 90,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Text(
                              'Shop Now',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 43),
                    child: SizedBox(
                        height: 230,
                        width: 160,
                        child: Image.asset(
                          'assets/images/girl.png',
                          fit: BoxFit.fill,
                        )),
                  )
                ]),
              )),
          //Category
          const SizedBox(
            height: 30,
          ),
          const CategoryArticles(),
          const SizedBox(
            height: 30,
          ),
          const CardsSwipper(),
          const SizedBox(
            height: 30,
          ),

          //Most_Popular
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Most Popular',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                Text('See All',
                    style: TextStyle(fontSize: 20, color: Colors.black26))
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../styles_const.dart';
import '../screens.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: ListView(
        children: const [SizedBox(height: 10), Header(), HomeBody()],
      )),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ktrans,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Row(
        children: [
          InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(kBorderRadius),
              child: const Icon(
                Icons.menu,
                size: 33,
                color: kBlack,
              )),
          const Spacer(),
          InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(kBorderRadius),
              child: const Icon(
                Icons.search,
                size: 33,
                color: kBlack,
              )),
          const SizedBox(
            width: 20,
          ),
          Stack(
            children: [
              InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(kBorderRadius),
                child: const Icon(Icons.shopping_bag_outlined,
                    size: 33, color: kBlack),
              ),
              Positioned(
                  top: 6,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(3),
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                        border: Border.all(width: 1.5, color: kWhite)),
                    child: const Center(
                      child: Text(
                        '9',
                        style:
                            TextStyle(fontSize: 10, height: 1, color: kWhite),
                      ),
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}

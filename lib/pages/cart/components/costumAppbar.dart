import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '/widgets/size_config.dart';

class CostumAppBar extends StatelessWidget {
  const CostumAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(18),
          vertical: getProportionateScreenHeight(15)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: getProportionateScreenHeight(40),
            width: getProportionateScreenWidth(35),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                getProportionateScreenHeight(10),
              ),
            ),
            child: IconButton(
              onPressed: () {
                // print(cartlist.carts.first.name);
              },
              icon: SvgPicture.asset(
                "assets/icons/menu.svg",
                height: getProportionateScreenHeight(17),
                color: Colors.black,
              ),
            ),
          ),
          Container(
            height: getProportionateScreenHeight(40),
            width: getProportionateScreenWidth(35),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius:
                  BorderRadius.circular(getProportionateScreenHeight(10)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/photo_2021-05-17_18-43-59.jpg",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

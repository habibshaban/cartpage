import 'package:flutter/material.dart';

import '/pages/home/home_controller/home_controller.dart';
import '/widgets/size_config.dart';

class CartList extends StatelessWidget {
  const CartList({
    Key? key,
    required this.cartlist,
  }) : super(key: key);

  final HomeController cartlist;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: getProportionateScreenHeight(8),
      ),
      child: ListView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemBuilder: (ctx, i) => Padding(
          padding: EdgeInsets.symmetric(
            vertical: getProportionateScreenHeight(5),
            horizontal: getProportionateScreenWidth(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      right: getProportionateScreenWidth(15),
                      top: getProportionateScreenHeight(15),
                    ),
                    height: getProportionateScreenHeight(55),
                    width: getProportionateScreenWidth(55),
                    decoration: BoxDecoration(
                      color: Color(0xFFe6e6e6),
                      borderRadius: BorderRadius.circular(
                          getProportionateScreenWidth(10)),
                    ),
                  ),
                  Positioned(
                      top: 0,
                      right: 0,
                      child: Image(
                        height: getProportionateScreenHeight(50),
                        width: getProportionateScreenWidth(50),
                        fit: BoxFit.fitWidth,
                        image: AssetImage(
                          cartlist.carts[i].image,
                        ),
                      ))
                ],
              ),
              Container(
                width: getProportionateScreenWidth(150),
                padding: EdgeInsets.only(top: getProportionateScreenHeight(30)),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cartlist.carts[i].name,
                      style: TextStyle(
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(7),
                    ),
                    Row(
                      children: [
                        Text(
                          ' \$',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFFF7643),
                          ),
                        ),
                        Text(
                          ' ${cartlist.carts[i].price}',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: getProportionateScreenHeight(10)),
                padding: EdgeInsets.all(getProportionateScreenHeight(8.0)),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(getProportionateScreenWidth(6)),
                  color: Color(0XFFe6e6e6),
                ),
                child: Text(
                  'x${cartlist.carts[i].totalnum}',
                  style: TextStyle(fontSize: getProportionateScreenHeight(13)),
                ),
              ),
            ],
          ),
        ),
        itemCount: cartlist.carts.length,
      ),
    );
  }
}

import 'package:coffee_shop/constants.dart';
import 'package:coffee_shop/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductList extends StatelessWidget {
  final Product product;
  final Function onPress;
  const ProductList({
    Key key,
    this.onPress,
    this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: ListTile(
        leading: Container(
          width: 60,
          child: SvgPicture.asset(product.image),
        ),
        title: Text(product.name, style: kProductNameStyle),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: onPress,
      ),
    );
  }
}

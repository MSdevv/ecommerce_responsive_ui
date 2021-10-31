import 'package:flutter/material.dart';
import './components/components.dart';
import '/config/config.dart';
import '/models/models.dart';
import '/widgets/widgets.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = '/details';
  @override
  Widget build(BuildContext context) {
    final Product _product = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: CustomAppBar(rating: _product.rating),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductImages(product: _product),
            TopRoundedContainer(
              color: Colors.grey.shade50,
              child: Column(
                children: [
                  ProductDescription(
                    product: _product,
                    pressOnSeeMore: () {},
                  ),
                  TopRoundedContainer(
                    child: Column(
                      children: [
                        ColorDots(product: _product),
                        TopRoundedContainer(
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(
                              SizeConfig.screenWidth * 0.15,
                              getProportionateScreenWidth(15),
                              SizeConfig.screenWidth * 0.15,
                              getProportionateScreenWidth(40),
                            ),
                            child: DefaultButton(
                              text: 'Ajouter au panier',
                              press: () {},
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

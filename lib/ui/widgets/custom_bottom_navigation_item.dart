import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomButtonNavigatinItem extends StatelessWidget {
  final String imageUrl;
  final bool isSelected;

  const CustomButtonNavigatinItem({
    Key? key,
    required this.imageUrl,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    imageUrl,
                ),
              ),
            ),
          ),
          Container(
            width: 30,
            height: 2,
            decoration: BoxDecoration(
                color: isSelected ? kPrimaryColor : kTransparentColor ,
                borderRadius: BorderRadius.circular(18),
            ),
          )
        ],
      );
  }
}



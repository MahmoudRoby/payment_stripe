import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_app/constants.dart';

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem({
    super.key,
    required this.isActive,
    required this.image,
  });
  final bool isActive;
  final String image;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      width: 103,
      height: 62,
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(
                width: 1.5, color: isActive ? kPrimaryColor : Colors.grey),
            borderRadius: BorderRadius.circular(15),
          ),
          shadows: const [
            BoxShadow(
                blurRadius: 4,
                offset: Offset(0, 0),
                spreadRadius: 0,
                color: Colors.white)
          ]),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.white),
          child: SvgPicture.asset(
            image,
            height: 24,
          ),
        ),
      ),
    );
  }
}

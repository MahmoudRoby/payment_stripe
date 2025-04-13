import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_app/core/utils/styles.dart';

class MasterCardDetails extends StatelessWidget {
  const MasterCardDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: double.infinity,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Center(
        child: ListTile(
          titleAlignment: ListTileTitleAlignment.center,
          leading: SvgPicture.asset('assets/images/master_card.svg'),
          title: const Text('Credit Card',style: Styles.style18,),
          subtitle: const Text('Mastercard **78',style: Styles.style16,),
        ),
      ),
    );
  }
}

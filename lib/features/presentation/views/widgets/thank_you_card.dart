import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment_app/constants.dart';
import 'package:payment_app/core/utils/styles.dart';
import 'package:payment_app/features/presentation/views/widgets/master_card_details.dart';
import 'package:payment_app/features/presentation/views/widgets/payment_item_info.dart';
import 'package:payment_app/features/presentation/views/widgets/total_price.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50 + 16, left: 22, right: 22),
      child: Column(
        children: [
          const Text(
            'Thank you',
            style: Styles.styles25,
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            'Your transaction was successful',
            style: Styles.style20,
          ),
          const SizedBox(
            height: 42,
          ),
          const PaymentItemInfo(title: 'Date', value: '01/24/2023'),
          const SizedBox(
            height: 20,
          ),
          const PaymentItemInfo(title: 'Time', value: '10:15 AM'),
          const SizedBox(
            height: 20,
          ),
          const PaymentItemInfo(title: 'To', value: 'Sam Louis'),
          const Divider(
            thickness: 1,
            height: 60,
          ),
          const TotalPrice(title: 'Total', value: r'$50.97'),
          const SizedBox(
            height: 30,
          ),
          const MasterCardDetails(),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                FontAwesomeIcons.barcode,
                size: 70,
              ),
              Container(
                width: 113,
                height: 58,
                decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        side:
                            const BorderSide(width: 1.5, color: kPrimaryColor),
                        borderRadius: BorderRadius.circular(15)),
                    color: Colors.white),
                child: Center(
                  child: Text(
                    'PAID',
                    style: Styles.style24.copyWith(color: kPrimaryColor),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 100,)
        ],
      ),
    );
  }
}

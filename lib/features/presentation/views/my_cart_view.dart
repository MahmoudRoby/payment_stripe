import 'package:flutter/material.dart';
import 'package:payment_app/constants.dart';
import 'package:payment_app/features/presentation/views/widgets/custom_app_bar.dart';
import 'package:payment_app/features/presentation/views/widgets/custom_button.dart';
import 'package:payment_app/features/presentation/views/widgets/order_info_item.dart';
import 'package:payment_app/features/presentation/views/widgets/payment_method_list_view.dart';
import 'package:payment_app/features/presentation/views/widgets/total_price.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar('My Cart'),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Expanded(child: Image.asset('assets/images/basket.png')),
            const SizedBox(
              height: 15,
            ),
            const OrderInfoItem(
              title: 'Order Subtotal',
              value: r'$42.97',
            ),
            const SizedBox(
              height: 3,
            ),
            const OrderInfoItem(
              title: 'Discount',
              value: r'$0',
            ),
            const SizedBox(
              height: 3,
            ),
            const OrderInfoItem(
              title: 'Shipping',
              value: r'$8',
            ),
            const Divider(
              height: 34,
            ),
            const TotalPrice(
              title: 'Total',
              value: r'$50.97',
            ),
            const SizedBox(
              height: 16,
            ),
            CustomButton(
              backgroundColor: kPrimaryColor,
              text: 'Complet Payment',
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return const PaymentBottomSheet();
                    });
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) => const PaymentDetailsView(),
                //   ),
                // );
              },
            ),
            const SizedBox(
              height: 12,
            )
          ],
        ),
      ),
    );
  }
}

class PaymentBottomSheet extends StatelessWidget {
  const PaymentBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 20,
          ),
          const PaymentMethodListView(),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
              onPressed: () {},
              text: 'Continue',
              backgroundColor: kPrimaryColor)
        ],
      ),
    );
  }
}

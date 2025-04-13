import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:payment_app/constants.dart';
import 'package:payment_app/features/presentation/views/thank_you.dart';
import 'package:payment_app/features/presentation/views/widgets/custom_app_bar.dart';
import 'package:payment_app/features/presentation/views/widgets/custom_button.dart';
import 'package:payment_app/features/presentation/views/widgets/custom_credit_card.dart';
import 'package:payment_app/features/presentation/views/widgets/payment_method_list_view.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar('Payment Details'),
      body: const PaymentDetailsViewBody(),
    );
  }
}

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: PaymentMethodListView()),
        SliverToBoxAdapter(
            child: CustomCreditCard(
          autovalidateMode: autovalidateMode,
          formKey: formKey,
        )),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 12, left: 16, right: 16),
              child: CustomButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    log('pay');
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ThankYouView()));
                  }
                },
                backgroundColor: kPrimaryColor,
                text: 'Pay',
              ),
            ),
          ),
        )
      ],
    );
  }
}

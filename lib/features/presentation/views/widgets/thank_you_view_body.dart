import 'package:flutter/material.dart';
import 'package:payment_app/constants.dart';
import 'package:payment_app/features/presentation/views/widgets/thank_you_card.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: ShapeDecoration(
              color: const Color(0xffededed),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const ThankYouCard(),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * .25,
            left: -20,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * .25,
            right: -20,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          const Positioned(
            left: 0,
            right: 0,
            top: -40,
            child: CircleAvatar(
              backgroundColor: Color(0xffededed),
              radius: 50,
              child: CircleAvatar(
                radius: 40,
                backgroundColor: kPrimaryColor,
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 36,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * .25 + 20,
            left: 20 + 8,
            right: 20 + 8,
            child: Row(
              children: List.generate(
                  25,
                  (index) => Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2),
                          child: Container(
                            color: Colors.white,
                            height: 2,
                          ),
                        ),
                      )),
            ),
          ),
        ],
      ),
    );
  }
}

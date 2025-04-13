  import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_app/core/utils/styles.dart';

AppBar buildAppBar(final String? title) {
    return AppBar(
      leading: Center(child: SvgPicture.asset('assets/images/arrow .svg'),),
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title:  Text(
        title ?? '',
        style: Styles.styles25,
        textAlign: TextAlign.center,
      ),
    );
  }
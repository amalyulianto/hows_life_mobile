import 'package:flutter/material.dart';

import '../theme.dart';

AppBar mainAppBar({title, centerTitle}) {
  return AppBar(
    backgroundColor: kColorButton,
    automaticallyImplyLeading: false,
    title: title,
    centerTitle: centerTitle,
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 8),
        child: Image.asset(
          'images/avatar_male.png',
          width: 45,
        ),
      ),
    ],
  );
}

import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors

import 'package:hows_life/providers/auth_providers.dart';
import 'package:hows_life/screens/pasien/daftar_konsultasi_screen.dart';
import 'package:hows_life/screens/pasien/dapat_konselor_screen.dart';
import 'package:hows_life/screens/pasien/pemantauan_screen.dart';
import 'package:hows_life/theme.dart';
import 'package:provider/provider.dart';

import '../../widgets/button_grid.dart';
import '../../widgets/button_second_grid.dart';
import '../../widgets/main_appbar.dart';

class HomeKonselorScreen extends StatelessWidget {
  static String route = '/konselor/home';

  HomeKonselorScreen({Key? key}) : super(key: key);

  Widget buildWelcome(BuildContext context, String name) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            // left: 8,
            top: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Selamat pagi, $name!',
                style: textBold.copyWith(color: Colors.white, fontSize: 22),
              ),
              Text(
                'Konselor',
                style: textMain.copyWith(color: kColorButton),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildMainGrid(BuildContext context, AuthProvider authProvider) {
    return Column(
      children: [
        KonselorGridButton(
          onTap: () {},
          text: 'Jadwal Anda',
        ),
        SizedBox(
          height: 12,
        ),
        KonselorGridButton(
          onTap: () {},
          text: 'Jadwal Permintaan Pasien',
        ),
      ],
    );
  }

  Widget buildDaftarPasien() {
    return Column(
      children: [
        KonselorGridButton(
          onTap: () {},
          text: 'Jadwal Anda',
        ),
        SizedBox(
          height: 12,
        ),
        KonselorGridButton(
          onTap: () {},
          text: 'Jadwal Permintaan Pasien',
        ),
      ],
    );
  }

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    AuthProvider homeProvider = Provider.of<AuthProvider>(context);

    getHome() async {}

    return SafeArea(
      child: Scaffold(
        // drawer: CustomDrawer(),
        backgroundColor: kColorBlue,
        appBar: mainAppBar(
          context: context,
          title: Image.asset('images/logo.png'),
          centerTitle: true,
          // key: _key,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildWelcome(context, homeProvider.pasien.name!),
                SizedBox(
                  height: 25,
                ),
                buildMainGrid(context, homeProvider),
                SizedBox(
                  height: 32,
                ),
                Text(
                  'Artikel untuk kamu',
                  style: textBold.copyWith(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                buildDaftarPasien(),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class KonselorGridButton extends StatelessWidget {
  const KonselorGridButton({
    required this.onTap,
    required this.text,
    Key? key,
  }) : super(key: key);

  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 20,
        ),
        decoration: BoxDecoration(
          color: kColorBlue2,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: textMain.copyWith(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.black87),
              padding: EdgeInsets.all(4),
              child: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}

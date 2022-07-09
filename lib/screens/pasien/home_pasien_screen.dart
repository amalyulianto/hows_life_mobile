// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hows_life/screens/pasien/daftar_konsultasi_screen.dart';
import 'package:hows_life/screens/pasien/dapat_konselor_screen.dart';
import 'package:hows_life/theme.dart';

import '../../widgets/button_grid.dart';
import '../../widgets/button_second_grid.dart';
import '../../widgets/main_appbar.dart';

class HomePasienScreen extends StatelessWidget {
  const HomePasienScreen({Key? key}) : super(key: key);

  Widget buildWelcome(BuildContext context) {
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
                'Selamat pagi, Gabriel!',
                style: textBold.copyWith(color: Colors.white, fontSize: 22),
              ),
              Text(
                'Semoga harimu menyenangkan',
                style: textMain.copyWith(color: kColorButton),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: IconButton(
            icon: Icon(Icons.notifications_outlined),
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DapatKonselorScreen()));
            },
          ),
        ),
      ],
    );
  }

  Widget buildMainGrid(BuildContext context) {
    return Row(
      children: [
        ButtonGrid(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DaftarKonsultasiScreen()));
          },
          color: kColorPurple,
          title: 'Daftar Konsultasi',
          image: 'images/konsultasi.png',
        ),
        SizedBox(width: 24),
        ButtonGrid(
          onTap: () {},
          color: kColorGrey,
          title: 'Pemantauan Perkembangan',
          image: 'images/pantau.png',
        ),
      ],
    );
  }

  Widget buildArticlesGrid() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            ButtonSecondGrid(
              onTap: () {},
              color: kColorButton,
              title: 'Jadilah diri sendiri yang hebat!',
              image: 'images/Frame.png',
            ),
            SizedBox(height: 8),
            ButtonSecondGrid(
              onTap: () {},
              color: kColorButton,
              title: 'Apakah kita butuh orang lain?',
              image: 'images/tanya.png',
            ),
          ],
        ),
        Column(
          children: [
            ButtonSecondGrid(
              onTap: () {},
              color: kColorButton,
              title: 'Mengapa tidak boleh merasa rendah diri?',
              image: 'images/tanya.png',
            ),
            SizedBox(height: 8),
            ButtonSecondGrid(
              onTap: () {},
              color: kColorButton,
              title: 'Kurangilah memikirkan hal yang tidak perlu!',
              image: 'images/gambar_1.png',
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kColorBlue,
        appBar: mainAppBar(
          title: Image.asset('images/logo.png'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildWelcome(context),
                SizedBox(
                  height: 25,
                ),
                buildMainGrid(context),
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
                buildArticlesGrid(),
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

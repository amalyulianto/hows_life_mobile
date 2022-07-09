import 'package:flutter/material.dart';
import 'package:hows_life/screens/pasien/home_pasien_screen.dart';
import 'package:hows_life/theme.dart';
import 'package:hows_life/widgets/main_appbar.dart';
import 'package:hows_life/widgets/new_button.dart';

class TungguJadwalScreen extends StatelessWidget {
  const TungguJadwalScreen({Key? key}) : super(key: key);

  Widget buildPilihanJadwal({String tanggal = 'Senin', String jam = '00.00'}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          tanggal,
          style: textMain.copyWith(fontSize: 18),
        ),
        Container(
          decoration: BoxDecoration(
            color: kColorButton,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            jam,
            style: textMain.copyWith(fontSize: 18),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kColorBlue,
        appBar: mainAppBar(
          centerTitle: true,
          title: Image.asset(
            'images/logo.png',
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Mohon tunggu...',
                    style: textBold.copyWith(color: Colors.white, fontSize: 24),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Jadwal pilihan kamu sedang kami proses ;)',
                    textAlign: TextAlign.center,
                    style: textMain.copyWith(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Image.asset('images/tunggu.png'),
                  Container(
                    decoration: BoxDecoration(
                      color: kColorGrey2,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                    child: Column(
                      children: [
                        buildPilihanJadwal(tanggal: 'Senin', jam: '09.00'),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'atau',
                          style: textMain.copyWith(color: Colors.black45),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        buildPilihanJadwal(tanggal: 'Senin', jam: '09.00'),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'atau',
                          style: textMain.copyWith(color: Colors.black45),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        buildPilihanJadwal(tanggal: 'Senin', jam: '09.00'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Batalkan',
                          style: textMain.copyWith(
                              color: kColorButton,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  NewButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomePasienScreen()),
                          (route) => false);
                    },
                    text: 'Kembali',
                    color: kColorGrey2,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:hows_life/theme.dart';
import 'package:hows_life/widgets/main_appbar.dart';

class PilihJadwalScreen extends StatefulWidget {
  const PilihJadwalScreen({Key? key}) : super(key: key);

  static String route = '/pasien/pilih_jadwal';

  @override
  State<PilihJadwalScreen> createState() => _PilihJadwalScreenState();
}

class _PilihJadwalScreenState extends State<PilihJadwalScreen> {
  int _selectedDate = 0;

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: mainAppBar(
          context: context,
          // key: _key,
          centerTitle: false,
          title: Text(
            'Pilih Jadwal',
            style: textBold.copyWith(
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: kColorBlue,
        body: SingleChildScrollView(
          child: Column(
            children: [
              DateButton(
                selectedIndexDate: 1,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DateButton extends StatelessWidget {
  const DateButton({
    required this.selectedIndexDate,
    Key? key,
  }) : super(key: key);

  final int selectedIndexDate;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // selectedDate = 0;
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        decoration: BoxDecoration(
            color: kColorSubButton,
            borderRadius: BorderRadius.circular(
              15,
            )),
        child: Column(
          children: [
            Text(
              'SEN',
              style: textMain.copyWith(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              '29',
              style: textBold.copyWith(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hows_life/screens/pasien/home_pasien_screen.dart';
import 'package:hows_life/theme.dart';
import 'package:hows_life/widgets/new_button.dart';
import 'package:hows_life/widgets/custom_text_field.dart';

import 'package:hows_life/widgets/custom_input_decoration.dart';

class LoginPasienScreen extends StatelessWidget {
  LoginPasienScreen({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();

  Widget emailInput() {
    return TextFormField(
      // key: _formKey,
      // validator: (value) => value.isEmpty ? 'Masukkan email!' : null,
      controller: _emailTextController,
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.emailAddress,
      decoration: buildInputDecoration('Email', 'Email'),
    );
  }

  Widget passwordInput() {
    return TextFormField(
      // key: _formKey,

      // validator: (value) => value.isEmpty ? 'Masukkan password!' : null,
      controller: _passwordTextController,
      textInputAction: TextInputAction.next,
      obscureText: true,
      decoration: buildInputDecoration('Kata Sandi', 'Kata Sandi'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kColorBlue,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Masuk sebagai Pasien',
                      style:
                          textBold.copyWith(color: Colors.white, fontSize: 24),
                    ),
                    SizedBox(
                      height: 36,
                    ),
                    emailInput(),
                    SizedBox(
                      height: 12,
                    ),
                    passwordInput(),
                    SizedBox(
                      height: 24,
                    ),
                    NewButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePasienScreen()));
                      },
                      text: 'Masuk',
                      color: kColorButton,
                    ),
                  ],
                ),
              ),
              Spacer(),
              Text(
                'Belum mempunyai akun? Daftar di sini',
                style: textMain.copyWith(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

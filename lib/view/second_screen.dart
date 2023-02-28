import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key, required this.dataPassed});
  final int dataPassed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/background_2.png'),
                fit: BoxFit.fill)),
        child: SafeArea(
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
              Text(AppLocalizations.of(context).secondPageHeader,
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                    fontSize: 20,
                    color: Color.fromRGBO(253, 255, 171, 1),
                  ))),
              dataPassed != 0
                  ? Text('$dataPassed',
                      style: const TextStyle(
                          fontSize: 165,
                          color: Color.fromRGBO(253, 255, 171, 1)))
                  : Text(AppLocalizations.of(context).errorMessage,
                      style: TextStyle(
                          fontSize: 20, color: Color.fromARGB(255, 239, 0, 0))),
              TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Color.fromRGBO(253, 255, 171, 1)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    AppLocalizations.of(context).buttonTextSecondPage,
                    style: TextStyle(color: Colors.black),
                  )),
            ]))),
      ),
    );
  }
}

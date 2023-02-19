import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              Text('Nieprawidłowa liczba to:',
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
                  : const Text('Podaj prawidłowe wartości',
                      style: TextStyle(
                          fontSize: 20, color: Color.fromARGB(255, 239, 0, 0))),
              TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Color.fromRGBO(253, 255, 171, 1)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Wroc',
                    style: TextStyle(color: Colors.black),
                  )),
            ]))),
      ),
    );
  }
}

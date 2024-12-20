import 'package:flutter/material.dart';

import '../home/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
    return Scaffold(
      body: _buildBodyPage(),
    );
  }

  Widget _buildBodyPage() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF5F8FEA),
            Color(0xFF7CA9FF).withOpacity(0.45),
          ],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildIconSplash(),
            _buildTextSplash(),
            SizedBox(height: 26,),
            _buildTitleSplash(),
          ],
        ),
      ),
    );
  }

  Widget _buildIconSplash() {
    return Container(
      width: 120,
      height: 118,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 20,
            spreadRadius: 5,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Image.asset(
        'assets/images/image 2.png',
        fit: BoxFit.contain,
      ),
    );
  }


  Widget _buildTextSplash() {
    return Container(
      child: const Text(
        'Cloudy',
        style: TextStyle(
          fontSize: 34,
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontFamily: 'Poppins'
        ),
      ),
    );
  }
  Widget _buildTitleSplash() {
    return  Text(
      'Dont worry about\n the weather we all here',
      style: TextStyle(
        fontSize: 16,
        color: Colors.white.withOpacity(0.40),
          fontFamily: 'Poppins'
      ),
      textAlign: TextAlign.center,
    );
  }
}

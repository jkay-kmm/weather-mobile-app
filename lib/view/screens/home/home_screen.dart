import 'package:flutter/material.dart';
import 'package:weather_app_mobile/core/utils/colors/styleText.dart';
import 'package:weather_app_mobile/view/screens/search/search_screen.dart';

import '../../../core/utils/colors/contants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [_buildHeadingPage(), _buildSliderPage(), _buildNewPage()],
        ),
      )),
    );
  }

  Widget _buildHeadingPage() {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              size: 24,
              color: AppColors.textSecondary,
            )),
        Text(
          'Hà Nội',
          style: AppTextStyles.heading,
        ),
        IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SearchScreen()
                  )
              );
            },
            icon: const Icon(
              Icons.search,
              size: 24,
              color: AppColors.textSecondary,
            )),
      ],
    ));
  }

  Widget _buildSliderPage() {
    return Container();
  }

  Widget _buildNewPage() {
    return Container();
  }
}

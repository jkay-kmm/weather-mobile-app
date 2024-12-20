import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/colors/styleText.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tìm kiếm", style:  AppTextStyles.heading,),
      ),
      body: Column(
        children: [
          _buildSearchBar(),
          _buildMapWeather(),
        ],
      ),
    );
  }
  Widget _buildSearchBar(){
    return Container(
      margin: const EdgeInsets.only(right: 16, left: 16),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Nhập tên thành phố ",
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)
              )
            ),
            onChanged: (value){
              print(',,,,,');
            },
          )
        ],
      ),
    );
  }
  Widget _buildMapWeather(){
    return Container();
  }
}

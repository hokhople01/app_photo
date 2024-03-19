import 'dart:io';

import 'package:app_photo/providers/app_image_provider.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import '../helper/app_image_picker.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({Key? key}) :  super(key:key);

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Consumer<AppImageProvider>(
          builder: (BuildContext Context, value, Widget? child){
            if(value.currentImage !=null){
              return Image.memory(value.currentImage!);
            }
            return const Center(
              child:  CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
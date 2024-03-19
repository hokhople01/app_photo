import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:app_photo/providers/app_image_provider.dart';
import '../helper/app_image_picker.dart';

class StartScreens extends StatefulWidget {
  const StartScreens({super.key});

  @override
  State<StartScreens> createState() => _StartScreensState();
}

class _StartScreensState extends State<StartScreens> {
  late AppImageProvider imageProvider;
  @override
  void initState() {
    super.initState();
    imageProvider = Provider.of<AppImageProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              'assets/images/cuongnek.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: const [
              Expanded(
                child: Center(
                  child: Text(
                    "Photo Editor",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 5,
                        wordSpacing: 10),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MaterialButton(
                          color: Colors.blue,
                          child: Text("Gallery"),
                          onPressed: () {
                            ImagePicker();
                          })
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

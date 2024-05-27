import 'dart:io';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:Yes_Loyalty/core/db/hive_db/adapters/user_details_adapter/user_details_adapter.dart';
import 'package:Yes_Loyalty/core/db/hive_db/boxes/user_details_box.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Uint8List? _imageBytes;
  String? filePath;
  String? fileName;

  @override
  void initState() {
    super.initState();
    _loadImageFromHive();
  }

  void _openFilePicker() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      setState(() {
        filePath = result.files.single.path!;
        fileName = basename(filePath!);
        print("Selected file: $fileName");

        // Read image file and update _imageBytes
        _imageBytes = File(filePath!).readAsBytesSync();

        // Store image in Hive
        UserDetailsDB? userDetails = UserDetailsBox.get('user_details_key');
        if (userDetails != null) {
          userDetails.image = _imageBytes;
          UserDetailsBox.put(
              'user_details_key', userDetails); // Update existing entry
        } else {
          // If user details do not exist, create a new entry
          UserDetailsBox.put(
              'user_details_key', UserDetailsDB(image: _imageBytes));
        }
      });
    }
  }

  void _loadImageFromHive() {
    UserDetailsDB? userDetails = UserDetailsBox.get('user_details_key');
    if (userDetails != null) {
      setState(() {
        _imageBytes = userDetails.image;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
       Center(
        child: 
        
        InkWell(
          onTap: _openFilePicker,
          child: CircleAvatar(
            radius: 40,
            backgroundColor: const Color.fromARGB(255, 235, 234, 234),
            backgroundImage:
                _imageBytes != null ? MemoryImage(_imageBytes!) : null,
            child: _imageBytes == null
                ? ClipOval(
                    child: Container(
                      color: const Color.fromARGB(255, 235, 234, 234),
                      child: const Icon(
                        Icons.person,
                        size: 59,
                        color: Colors.grey,
                      ),
                    ),
                  )
                : null,
          ),
        ),
      ),
    );
  }
}

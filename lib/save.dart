import 'dart:io';

import 'package:festival_poster/util.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class SavePage extends StatefulWidget {
  const SavePage({super.key});

  @override
  State<SavePage> createState() => _SavePageState();
}

class _SavePageState extends State<SavePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          savedImg != null ? Image.memory(savedImg!) : Text("Not Save"),
          ElevatedButton.icon(
            onPressed: () async {
              Directory add = await getApplicationDocumentsDirectory();
              String myFilePath = "${add.path}/img1.png";
              print(myFilePath);

              File file = File(myFilePath);
              if (savedImg != null) {
                await file.writeAsBytes(savedImg!);
                print(file.path);
                Share.shareXFiles(
                  [
                    XFile(file.path),
                  ],
                );
              }
            },
            icon: Icon(Icons.share),
            label: Text("Share"),
          ),
        ],
      ),
    );
  }
}

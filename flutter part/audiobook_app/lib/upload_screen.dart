import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:file_picker/file_picker.dart';
import 'package:audiobook_app/api_service.dart';

class UploadScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload PDF'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            String? filePath = await FilePicker.platform.pickFiles(
              type: FileType.custom,
              allowedExtensions: ['pdf'],
            ).then((value) => value?.files.single.path);

            if (filePath != null) {
              ApiService.uploadPDF(filePath);
            } else {
              // Handle error or cancellation
            }
          },
          child: Text('Select PDF File'),
        ),
      ),
    );
  }
}

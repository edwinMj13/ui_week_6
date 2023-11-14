import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_file_dialog/flutter_file_dialog.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class Design_Seven extends StatefulWidget {
  const Design_Seven({super.key});

  @override
  State<Design_Seven> createState() => _Design_SevenState();
}
class FileClass{
 final String image;
  FileClass({required this.image});
}
class _Design_SevenState extends State<Design_Seven> {

  GlobalKey _globalKey = GlobalKey();
 List<FileSystemEntity> fileList=[];
 List<String> imageList=[];
 ValueNotifier<List<String>> valueList=ValueNotifier([]);

  File? file;

  var img;
  @override
  Widget build(BuildContext context) {
    readCounter();
    return Scaffold(
      body: SafeArea(
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5.0,
                        spreadRadius: 0.0,
                        offset: Offset(1.0, 1.0), // shadow direction: bottom right
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(children: [
                      Container(
                        child: ClipOval(
                            child: SizedBox.fromSize(
                              size: const Size.fromRadius(70.0),
                              child: file == null
                                  ? const Icon(
                                Icons.person,
                                size: 70,
                              )
                                  : Image.file(
                                file!,
                                width: 150,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            )
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            openCamera();
                          },
                          child: const Text(
                            "Open Camera",
                            style: TextStyle(color: Colors.white),
                          )
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.deepPurple,width: 1),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: IconButton(onPressed: (){
                          saveLocalImage();
                          //   writeCounter( "one");
                        }, icon: const Icon(Icons.save,size: 30,color: Colors.deepPurple,)),
                      ),
                    ],),
                  ),
                ),
              ),
              Expanded(
                child: ValueListenableBuilder(
                  valueListenable: valueList,
                  builder: (BuildContext ctx,List<String> listNew,Widget? child){
                   return GridView.builder(padding: EdgeInsets.all(10.0),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            crossAxisCount: 3),

                        itemBuilder: (contex,index){
                         var listValue=listNew[index];

                          return ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.file(
                              File(listValue),
                              fit: BoxFit.cover,
                              width: 200,
                              height: 200,
                            ),
                          );
                        },
                        itemCount: listNew.length);
                  },

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
   readCounter() async {
 //   final dir =await getExternalStorageDirectory();
     await Permission.manageExternalStorage.request();
     var status = await Permission.manageExternalStorage.status;
     if (status.isDenied) {
       // We didn't ask for permission yet or the permission has been denied   before but not permanently.
       return;
     }

// You can can also directly ask the permission about its status.
     if (await Permission.storage.isRestricted) {
       // The OS restricts access, for example because of parental controls.
       return;
     }
     if (status.isGranted) {
//here you add the code to store the file


       try {
         Directory dir = Directory('/storage/emulated/0/Download/downloadflutter/');

        // final file = await File("${dir.path}/downloadflutter");
           fileList=dir.listSync(recursive: true,followLinks: false);
             imageList = fileList.map((fileEntity) => fileEntity.path).toList();
             valueList.value.clear();
             imageList.forEach((element) {
               valueList.value.add(element);
             });
             valueList.notifyListeners();
          //   imageList.add(File(element.path));

         print("fileList  $fileList");
         print("imageList  $imageList");


         //   return int.parse(contents);
       } catch (e) {
         // If encountering an error, return 0
         print("Error ${e.toString()}");
         return 0;
       }
     }
  }
  Future openCamera() async {
    print("object");
      img = await ImagePicker()
        .pickImage(source: ImageSource.camera, imageQuality: 10);

    setState(() {
      file = File(img!.path);
    //  filePath=file.toString();
    });

  }

  Future<void> saveLocalImage() async {
    final imgBytes=await img!.readAsBytes();
    var status = await Permission.storage.request();
    print("Storage Status \"$status\"");
    if(!status.isGranted){
      await Permission.storage.request();
    }
    Directory directory = Directory('/storage/emulated/0/Download/downloadflutter');
    if(!(await directory.exists())) {
      print("Creation");
      await directory.create(recursive: true);
    }else {
      print("Created");
    }
/*
      final dir = await getExternalStorageDirectory();
      final imgPATH = "${dir!.path}/downloadflutter";
    if(!(await dir.exists())) {
      print("Creation");
      await Directory(imgPATH).create(recursive: true);
    }else {
      print("Created");
    }*/
   //   final myimgDIR = await Directory(imgPATH).create();
//var compressing=File("$imgPATH/img.jpg")..writeAsBytesSync(file)
String imageName=DateTime.now().millisecondsSinceEpoch.toString();

      final paths = File("${directory.path}/$imageName.jpg");
      await paths.writeAsBytes(imgBytes);
    final result = await ImageGallerySaver.saveFile(paths.path,);
//num a=10;
    if(file!=null) {
      file = null;
    }
    setState((){ });

     //  final params = SaveFileDialogParams(sourceFilePath: paths.path);
     // final finalPath = await FlutterFileDialog.saveFile(params: params);
      /*     var filename = "${dir!.path}/storage/emulated/0/flutter/images.png";

      final paths = File(filename);
      await paths.writeAsBytes(imgBytes);

      final params = SaveFileDialogParams(sourceFilePath: paths.path);
      final finalPath = await FlutterFileDialog.saveFile(params: params);
*/
      //  final result= await ImageGallerySaver.saveImage(imgBytes,);
  //  }
  }
/*
  static Future<String> getExternalDocumentPath() async{
    var status = await Permission.storage.request();
    print("Storage Status \"$status\"");
    if(!status.isGranted){
      await Permission.storage.request();
    }
    Directory _directory = Directory("");
    if (Platform.isAndroid) {
      // Redirects it to download folder in android
      _directory = Directory("/storage/emulated/0/Download");
    } else {
      _directory = await getApplicationDocumentsDirectory();
    }

    final exPath = _directory.path;
    print("Saved Path: $exPath");
    await Directory(exPath).create(recursive: true);
    return exPath;
  }

  static Future<String> get _localPath async {
    // final directory = await getApplicationDocumentsDirectory();
    // return directory.path;
    // To get the external path from device of download folder
    final String directory = await getExternalDocumentPath();
    return directory;
  }

   Future<File> writeCounter(String name) async {
    final bytes=await img!.readAsBytes();

    final path = await _localPath;
    // Create a file for the path of
    // device and file name with extension
    File file= File('$path/$name');
    print("Save file");

    // Write the data in the file you have created
    return file.writeAsString(bytes);
  }
*/
}



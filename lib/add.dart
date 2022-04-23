import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'addFood.dart';

class add extends StatefulWidget {
  const add({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<add> {
  PlatformFile? pickedFile;
  final Future<FirebaseApp> firebase = Firebase.initializeApp();
  final formKey = GlobalKey<FormState>();
  Food addFood = Food();
  Future selectFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return;

    setState(() {
      pickedFile = result.files.first;
    });
  }

  Future uploadFile() async {
    final path = 'files/${pickedFile!.name}';
    final file = File(pickedFile!.path!);
    final ref;
    ref = FirebaseFirestore.instance.collection('addFood');
  }

  CollectionReference addCollection =
      FirebaseFirestore.instance.collection('addFood');

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: firebase,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasError) {
            return Scaffold(
              appBar: AppBar(
                title: Text("Error"),
              ),
              body: Center(
                child: Text("${snapshot.error}"),
              ),
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return Scaffold(
                appBar: AppBar(
                  backgroundColor: Color(0xFFFFFFFF),
                  title: const Text(
                    'Add',
                    style: TextStyle(
                      fontFamily: 'logo',
                      fontSize: 18,
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                body: Container(
                  padding: EdgeInsets.all(20),
                  child: Form(
                    key: formKey,
                    child: SingleChildScrollView(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Name",
                          style: TextStyle(fontSize: 20),
                        ),
                        TextFormField(
                          validator:
                              RequiredValidator(errorText: "Please fill out"),
                          onSaved: (textName) async {
                            addFood.textName = textName!;
                          },
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "Ingredients",
                          style: TextStyle(fontSize: 20),
                        ),
                        TextFormField(
                          onSaved: (textIngredients) async {
                            addFood.textIngredients = textIngredients!;
                          },
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "Directions",
                          style: TextStyle(fontSize: 20),
                        ),
                        TextFormField(
                          onSaved: (textDirections) async {
                            addFood.textDirections = textDirections!;
                          },
                        ),
                        SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: () async {
                                  if (formKey.currentState!.validate()) {
                                    formKey.currentState?.save();
                                    print(
                                        " data = ${addFood.textName} ${addFood.textIngredients} ${addFood.textDirections}");
                                    await addCollection.add({
                                      'textName': addFood.textName,
                                      'textIngredients':
                                          addFood.textIngredients,
                                      'textDirections': addFood.textDirections
                                    });
                                    formKey.currentState?.reset();
                                  }
                                  // if(formKey.currentState.validate()){}
                                },
                                child: Text('Submit'))),
                      ],
                    )),
                  ),
                ));
          }

          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        });
  }
}

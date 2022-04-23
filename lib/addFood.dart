import 'package:cloud_firestore/cloud_firestore.dart';

class Food {
  late String textName;
  late String textIngredients;
  late String textDirections;
  List subIngredients = [];
  late Timestamp createdAt;
  late Timestamp updatedAt;
  // Food({required this.textName,required this.textIngredients,required this.textDirections});
  Food();

  Food.fromMap(Map<String, dynamic> data) {
    textName = data['textName'];
    textIngredients = data['textIngredients'];
    textDirections = data['textDirections'];
    createdAt = data['createdAt'];
    updatedAt = data['updatedAt'];
  }

  Map<String, dynamic> toMap() {
    return {
      'textName': textName,
      'textIngredients': textIngredients,
      'textDirections': textDirections,
      'subIngredients': subIngredients,
      'createdAt': createdAt,
      'updatedAt': updatedAt
    };
  }
}
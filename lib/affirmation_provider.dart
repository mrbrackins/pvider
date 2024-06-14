import 'package:flutter/material.dart';

class AffirmationProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> affirmations = [];

  void addAffrimation(Map<String,dynamic> affirmation){
    affirmations.add(affirmation);
  }
   void removeAffrimation(Map<String,dynamic> affirmation){
    affirmations.remove(affirmation);
  }
}
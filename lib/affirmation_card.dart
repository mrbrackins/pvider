import 'package:flutter/material.dart';

class AffirmationCard extends StatelessWidget {
  final String affirmation;

  const AffirmationCard({super.key, required this.affirmation});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [Text(affirmation)],
      ),
    );
  }
}

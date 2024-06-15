import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prvder_example/affirmation_card.dart';
import 'package:prvder_example/affirmation_provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    print(
        Provider.of<AffirmationProvider>(context, listen: false).affirmations);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Title'),
      ),
      body: Center(
          child: Expanded(
        child: ListView.builder(
            itemCount: Provider.of<AffirmationProvider>(context, listen: true)
                .affirmations
                .length,
            itemBuilder: (context, index) {
              final affirmation =
                  Provider.of<AffirmationProvider>(context, listen: true)
                              .affirmations
                              .length >
                          0
                      ? Provider.of<AffirmationProvider>(context, listen: true)
                          .affirmations[index]
                      : {"name": "No affirmations yet"};

              return (AffirmationCard(affirmation: affirmation['name']));
            }),
      )),
      floatingActionButton:
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        FloatingActionButton(
          onPressed: () {
            Provider.of<AffirmationProvider>(context, listen: false)
                .addAffrimation({
              'name': 'Krista',
              'age': 38,
            });
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
        FloatingActionButton(
          onPressed: () {
            Provider.of<AffirmationProvider>(context, listen: false)
                .removeAffrimation();
          },
          tooltip: 'Decrement',
          child: const Icon(Icons.remove),
        ),
      ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prvder_example/affirmation_provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    print(Provider.of<AffirmationProvider>(context, listen: false).affirmations);
     return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Title'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '1',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Provider.of<AffirmationProvider>(context).addAffrimation({
      'name' : 'Krista',
      'age' : 38,
    });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}




import 'package:flutter/material.dart';
import 'package:practice/provider_practice/provider/counter_provider.dart';
import 'package:provider/provider.dart';

class CounterScreenProvider extends StatelessWidget {
  const CounterScreenProvider({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CounterProvider>(
      context,
      listen: false, // Specify when you need not to listen the provider....
    );
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          provider.incrementCounter(); // Increments the value...
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),

      // Only this widget will be rebuild.
      body: Consumer<CounterProvider>(
        builder: (context, value, child) => Center(
          child: Text(
            value.count.toString(),
            // provider.count.toString(),
            style: const TextStyle(
              fontSize: 30,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

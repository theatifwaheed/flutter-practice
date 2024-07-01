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
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          provider.incrementCount(); // Increments the value...
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),

      // Only this widget will be rebuild.
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ValueListenableBuilder(
              valueListenable: provider.counter,
              builder: (ctx, value, child) {
                return Center(
                  child: Text(
                    value.toString(),
                    style: const TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  ),
                );
              }),
          InkWell(
            onTap: () {
              provider.incrementCounter();
            },
            child: Container(
              width: size.width * .4,
              height: size.height * .1,
              color: Colors.red,
              child: const Icon(Icons.add),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Consumer<CounterProvider>(
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
        ],
      ),
    );
  }
}

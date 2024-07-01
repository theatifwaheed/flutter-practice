import 'package:flutter/material.dart';
import 'package:practice/provider_practice/provider/counter_provider.dart';
import 'package:provider/provider.dart';

import 'provider_practice/screens/counter.dart';

/// With Multi-Provider...
class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CounterProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Practice Project',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const CounterScreenProvider(),
        // home: const SizedBox(),
      ),
    );
  }
}

/// With Single Provider...
// class MyApp extends StatelessWidget {
//   const MyApp({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (_) => CounterProvider(),
//       child: MaterialApp(
//         title: 'Practice Project',
//         theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//           useMaterial3: true,
//         ),
//         home: const CounterScreenProvider(),
//         // home: const SizedBox(),
//       ),
//     );
//   }
// }

/// Old
// class MyApp extends StatelessWidget {
//   const MyApp({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Practice Project',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const SizedBox(),
//     );
//   }
// }

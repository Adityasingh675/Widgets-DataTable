import 'package:flutter/material.dart';
import 'datatable_exmp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DataTableExmp(),
    );
  }
}

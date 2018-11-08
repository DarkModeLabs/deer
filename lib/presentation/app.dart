import 'package:flutter/material.dart';
import 'package:tasking/dependencies.dart';
import 'package:tasking/presentation/screen/todo_list/todo_list_screen.dart';
import 'package:tasking/presentation/shared/themes.dart';

Dependencies _sharedDependencies;
Dependencies get dependencies => _sharedDependencies;

class App extends StatelessWidget {
  App({
    Key key,
    Dependencies dependencies,
  }) : super(key: key) {
    _sharedDependencies = dependencies;
  }

  final String _title = 'Tasking';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: Themes.main,
      home: TodoListScreen(title: _title),
    );
  }
}

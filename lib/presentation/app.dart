import 'package:flutter/material.dart';
import 'package:tasking/dependencies.dart';
import 'package:tasking/presentation/colorful_app.dart';
import 'package:tasking/presentation/screen/todo_list/todo_list_screen.dart';

Dependencies _sharedDependencies;
Dependencies get dependencies => _sharedDependencies;

class App extends StatelessWidget {
  App({
    Key key,
    Dependencies dependencies,
  }) : super(key: key) {
    _sharedDependencies = dependencies;
  }

  final String _title = 'Todos';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ColorfulApp(
      builder: (context, theme) {
        return MaterialApp(
          title: _title,
          theme: theme,
          home: TodoListScreen(title: _title),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
// import 'features/home/presentation/pages/home_page.dart';
// import 'features/home/presentation/blocs/home_bloc.dart';
// import 'core/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [],
        child: MaterialApp(
          title: 'Flutter Clean Architecture',
          theme: AppTheme.lightTheme,
          home: HomePage(),
        ));

    // //  BlocProvider(
    // //   create: (context) => HomeBloc(
    // //     getAllData: GetAllData(ApiDataSource()),
    // //     updateData: UpdateData(ApiDataSource()),
    // //     removeData: RemoveData(ApiDataSource()),
    // //   ),
    //   child: MaterialApp(
    //     title: 'Flutter Clean Architecture',
    //     theme: AppTheme.lightTheme,
    //     home: HomePage(),
    //   ),
    // );
  }
}

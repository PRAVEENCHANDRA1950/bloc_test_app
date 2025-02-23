import 'package:flutter/material.dart';
// import 'features/home/presentation/pages/home_page.dart';
// import 'features/home/presentation/blocs/home_bloc.dart';
// import 'core/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [],
        child: MaterialApp(
          title: 'Flutter Clean Architecture',
          // theme: AppTheme.lightTheme,
          home: HomeWidget(),
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

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text("Home Page"),
    ));
  }
}

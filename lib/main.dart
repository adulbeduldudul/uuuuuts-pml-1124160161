void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext cogitntext) {
    return MaterialApp(
      title: 'uts nomor 1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
    );
  }
}
class ContohApp extends StatelessWidget {
  const ContohApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
    );
  }
}


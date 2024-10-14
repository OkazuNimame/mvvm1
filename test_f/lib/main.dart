import 'package:flutter/material.dart';
import 'package:test_f/logic.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 late Logic _logic;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _logic = Logic(5);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount:_logic.checkString.length ,
          itemBuilder: (context,index){
            return CheckboxListTile(
              title: Text("${_logic.checkString[index]}"),
              value: _logic.check[index], onChanged:(bool? value){
              setState(() {
                _logic.selectValue(index);
              });
              
            });
        }),
        
      ),
    );
  }
}

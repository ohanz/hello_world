import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart'; 

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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body:
       Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.]
    // ElevatedButton(child: Text('Navigate'),
    //   onPressed: () {
        
    //   },),)
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(onPressed: (){
              Navigator.push(context,
               MaterialPageRoute(
                builder: (_) => const AboutScreen(),));
            }, child: const Text('Navigate Now')),
             const Text(
          "Ohanz.hype"
              "\n\nProgramming isn't about what you know;"
              "\nIt's about what you see around you."
              "\n\n - Ohanz", 
              style: TextStyle(fontWeight: FontWeight.bold)
        ),
            const Text("Tap to See Magic",
            style: TextStyle(fontWeight: FontWeight.bold , fontSize:37,)
            ),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Text('Go On', style: TextStyle()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
        
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                leading: const Icon(Icons.list),
                trailing: const Text(
                  "GFG",
                  style: TextStyle(color: Colors.green, fontSize: 15),
                ),
                title: Text("List item $index"));
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, 
          MaterialPageRoute(builder: (_) => const EditBioScreen(),));
        },
         tooltip: 'Edit Now',
        child: const Icon(Icons.add),
        ),
     // 
    );
  }
}

class EditBioScreen extends StatefulWidget{
  const EditBioScreen({super.key});

  @override
  State<EditBioScreen> createState() => _EditBioScreenState();
}

class _EditBioScreenState extends State<EditBioScreen> {
   Color _color = Color.fromRGBO(141, 48, 48, 1);
   Color _color1 = Colors.green;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: const Text('Edit Your Bio'),

      // leading: const Icon(Icons.menu),
        actions: [
          IconButton(onPressed: () => {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () => {}, icon: const Icon(Icons.more_vert)),
        ],
    ),
    body:  Stack(
      alignment: Alignment.center,
      children: [
        Center(
          child: Container( // Your Image
          color: _color,
              height: 100,
              width: 100,
              child: GestureDetector( onTap: () => {
                 Navigator.push(context, 
          MaterialPageRoute(builder: (_) => const PeopleScreen(),))
              },
),
              
        ), 
    ),
     Positioned(
      bottom: 10, //right: 20,
      child: InkWell(
        child: Container( color: _color1,
         height: 50,
        width: 100,
        ),
        onTap: () => {
          print("Container pressed"),
          setState(() {
            _color1 == Colors.yellow
                ? _color1 = Colors.green
                : _color1 = Colors.yellow;
          })
        },
        
      )),
      
    ]
      
    )
   );
  }
}

class PeopleScreen extends StatefulWidget{
  const PeopleScreen({super.key});

  @override
  State<PeopleScreen> createState() => _PeopleScreenState();
}

class _PeopleScreenState extends State<PeopleScreen> {


void _popToast(BuildContext ct){
  Fluttertoast.showToast(  
        msg: 'This is toast notification',  
        toastLength: Toast.LENGTH_SHORT,  
        gravity: ToastGravity.BOTTOM,  
        timeInSecForIosWeb: 1,  
        backgroundColor: Colors.red,  
        textColor: Colors.yellow  
    ); 
}

void _showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Added to favorite'),
        action: SnackBarAction(label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
}

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: const Text('Find Your Friends'),
      actions: <Widget>[
    TextButton(
      onPressed: ()=> _showToast(context),
      child: Text('iSave'),
    ),
  ],

    ),

    body: Center(
      child: ElevatedButton(onPressed: (){
              _popToast(context);
            }, child: const Text('Toast Now')),
    ),
   );
  }
}

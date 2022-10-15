import 'package:flutter/material.dart';
import 'package:youthopia_2022_app/screens/login_screen.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: ".env");

  runApp(
      //! Uncomment to enable Device Preview
/*     DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(), // Wrap your app
    ), */

      const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

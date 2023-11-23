// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBpHf9sW6JJME8pMjVlkIO1zkzKBmIvImM',
    appId: '1:644919936580:web:98ce66b080efea6ef41e11',
    messagingSenderId: '644919936580',
    projectId: 'apotek-49b2b',
    authDomain: 'apotek-49b2b.firebaseapp.com',
    storageBucket: 'apotek-49b2b.appspot.com',
    measurementId: 'G-FFG8GQCM4Y',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAA9X3fLITbDJ1tuzmrrBJRAkl5CvF6LTo',
    appId: '1:644919936580:android:21344870e30e8f29f41e11',
    messagingSenderId: '644919936580',
    projectId: 'apotek-49b2b',
    storageBucket: 'apotek-49b2b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAeQdmchsY7Zf7BMr4J7NYpVgPMYl9OzU0',
    appId: '1:644919936580:ios:63042b7b797d655df41e11',
    messagingSenderId: '644919936580',
    projectId: 'apotek-49b2b',
    storageBucket: 'apotek-49b2b.appspot.com',
    iosBundleId: 'com.example.apotek',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAeQdmchsY7Zf7BMr4J7NYpVgPMYl9OzU0',
    appId: '1:644919936580:ios:9b243a4c5bff3179f41e11',
    messagingSenderId: '644919936580',
    projectId: 'apotek-49b2b',
    storageBucket: 'apotek-49b2b.appspot.com',
    iosBundleId: 'com.example.apotek.RunnerTests',
  );
}

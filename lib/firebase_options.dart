// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyD1kN8869_6IZOIH9DGlFMsEHr-QwzqUm0',
    appId: '1:716884217015:web:0c67f1e5c870177d2f1132',
    messagingSenderId: '716884217015',
    projectId: 'todo-app-82e55',
    authDomain: 'todo-app-82e55.firebaseapp.com',
    storageBucket: 'todo-app-82e55.appspot.com',
    measurementId: 'G-6SPYQD0KGK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAG_mUu7jYj0W-PCqJY-0r4XF_6xD7Sp8c',
    appId: '1:716884217015:android:51062f741d6d890f2f1132',
    messagingSenderId: '716884217015',
    projectId: 'todo-app-82e55',
    storageBucket: 'todo-app-82e55.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDRRGiA33-OGjwIpgtOpSc_E-3FHTI3tXk',
    appId: '1:716884217015:ios:6c04e621bff669302f1132',
    messagingSenderId: '716884217015',
    projectId: 'todo-app-82e55',
    storageBucket: 'todo-app-82e55.appspot.com',
    iosBundleId: 'com.example.todoApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDRRGiA33-OGjwIpgtOpSc_E-3FHTI3tXk',
    appId: '1:716884217015:ios:6c04e621bff669302f1132',
    messagingSenderId: '716884217015',
    projectId: 'todo-app-82e55',
    storageBucket: 'todo-app-82e55.appspot.com',
    iosBundleId: 'com.example.todoApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD1kN8869_6IZOIH9DGlFMsEHr-QwzqUm0',
    appId: '1:716884217015:web:632523187981da9a2f1132',
    messagingSenderId: '716884217015',
    projectId: 'todo-app-82e55',
    authDomain: 'todo-app-82e55.firebaseapp.com',
    storageBucket: 'todo-app-82e55.appspot.com',
    measurementId: 'G-D6Z7P34Y1H',
  );

}
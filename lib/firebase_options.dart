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
    apiKey: 'AIzaSyBHPc0mNDrfVE4z5BCEr1D4enOpcDg2x8g',
    appId: '1:940674108661:web:debd3607c432eee1a1c9bc',
    messagingSenderId: '940674108661',
    projectId: 'thesocial-7bd03',
    authDomain: 'thesocial-7bd03.firebaseapp.com',
    storageBucket: 'thesocial-7bd03.appspot.com',
    measurementId: 'G-GK4PNK4756',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBaOx5Z3GCAWvAhvhqYzly_22T9GtPY93w',
    appId: '1:940674108661:android:d8953e4c1469c497a1c9bc',
    messagingSenderId: '940674108661',
    projectId: 'thesocial-7bd03',
    storageBucket: 'thesocial-7bd03.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAXAAdshnGcdxmR3TcqBJPnzgz2ccPWvug',
    appId: '1:940674108661:ios:2ee9c4ed304b278aa1c9bc',
    messagingSenderId: '940674108661',
    projectId: 'thesocial-7bd03',
    storageBucket: 'thesocial-7bd03.appspot.com',
    androidClientId: '940674108661-7er8o5cjr3dj16ieis7dutue6ot2g6oe.apps.googleusercontent.com',
    iosClientId: '940674108661-b2dg3k0uq18m8if11gt8nj44cdqt34ep.apps.googleusercontent.com',
    iosBundleId: 'com.example.greenTaxi',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAXAAdshnGcdxmR3TcqBJPnzgz2ccPWvug',
    appId: '1:940674108661:ios:2ee9c4ed304b278aa1c9bc',
    messagingSenderId: '940674108661',
    projectId: 'thesocial-7bd03',
    storageBucket: 'thesocial-7bd03.appspot.com',
    androidClientId: '940674108661-7er8o5cjr3dj16ieis7dutue6ot2g6oe.apps.googleusercontent.com',
    iosClientId: '940674108661-b2dg3k0uq18m8if11gt8nj44cdqt34ep.apps.googleusercontent.com',
    iosBundleId: 'com.example.greenTaxi',
  );
}

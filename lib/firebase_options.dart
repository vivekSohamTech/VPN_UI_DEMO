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
    apiKey: 'AIzaSyATmdTkbjUI8cLQFYsGRQzVW1V0nPApnjU',
    appId: '1:269763470868:web:49a86bb012c256821fa901',
    messagingSenderId: '269763470868',
    projectId: 'vpnapp-7299a',
    authDomain: 'vpnapp-7299a.firebaseapp.com',
    storageBucket: 'vpnapp-7299a.appspot.com',
    measurementId: 'G-KTGZHQ5X15',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCkR1MTuOWj2CwBsWhmWkPO9SWo6J7-Mwk',
    appId: '1:269763470868:android:86df6bb9119d6a571fa901',
    messagingSenderId: '269763470868',
    projectId: 'vpnapp-7299a',
    storageBucket: 'vpnapp-7299a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBU8mWzgV6wXWISlV0mev00VH3tGWbXXo4',
    appId: '1:269763470868:ios:2966f2025d634d811fa901',
    messagingSenderId: '269763470868',
    projectId: 'vpnapp-7299a',
    storageBucket: 'vpnapp-7299a.appspot.com',
    iosBundleId: 'com.example.vpnUiDemo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBU8mWzgV6wXWISlV0mev00VH3tGWbXXo4',
    appId: '1:269763470868:ios:f02c1492974d80241fa901',
    messagingSenderId: '269763470868',
    projectId: 'vpnapp-7299a',
    storageBucket: 'vpnapp-7299a.appspot.com',
    iosBundleId: 'com.example.vpnUiDemo.RunnerTests',
  );
}
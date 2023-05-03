import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB-QbufQYKcen0o925nc1WIXCF0qw3voGg",
            authDomain: "product-delivery-app-b9dee.firebaseapp.com",
            projectId: "product-delivery-app-b9dee",
            storageBucket: "product-delivery-app-b9dee.appspot.com",
            messagingSenderId: "227611982775",
            appId: "1:227611982775:web:8cbe8d1f7afa91349b0632"));
  } else {
    await Firebase.initializeApp();
  }
}

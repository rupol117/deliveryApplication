import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/firebase_auth/auth_util.dart';

int? negativeValue(int? value) {
  return value! * -1;
}

double? total(
  int? subtotal,
  double? tax,
  int? delivery,
) {
  if (subtotal == 0) {
    return 0;
  } else
    return subtotal! + (subtotal * (tax! / 100)) + delivery!;
}

bool? matchlocation(
  LatLng? deliveryaddress,
  LatLng? useraddress,
) {
  // take 3 precision of these variables & compare if both are same or not
  if (deliveryaddress == null || useraddress == null) {
    return false;
  } else {
    return (deliveryaddress.latitude.toStringAsFixed(3) ==
            useraddress.latitude.toStringAsFixed(3)) &&
        (deliveryaddress.longitude.toStringAsFixed(3) ==
            useraddress.longitude.toStringAsFixed(3));
  }
}

String? delivery(LatLng? value1) {
  // return the LatLng value of 3 precision digits
  if (value1 == null) {
    return null;
  } else {
    return value1.latitude.toStringAsFixed(3) +
        ',' +
        value1.longitude.toStringAsFixed(3);
  }
}

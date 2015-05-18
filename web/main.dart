// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:sunflower/sunflower.dart' as sunflower;
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:html';
import 'dart:io';
import 'dart:async';
import 'package:polymer/polymer.dart';
import 'package:oauth2/oauth2.dart' as oauth2;

main() {
  querySelector('#text').text = 'Hello!';
//  oauth();
}

oauth() {
  final String redirectUrl = "https://bcubntmrdr.localtunnel.me/test.html";
  final String identifier = "46f99a212f7cafc94e9285fdd3111bcba269bf0289c5ee8cef963e32c44858ed";
  final String secret = "7ed7f5263fe4d6efb44b487c7b390a38f6da272eec531edd07c23b7008c15aa8";
  String authorizationEndpoint = "https://sandbox.coinbase.com/oauth/authorize?response_type=code&client_id=${identifier}&redirect_uri=${redirectUrl}&scope=balance";
  window.location.assign(authorizationEndpoint);
}

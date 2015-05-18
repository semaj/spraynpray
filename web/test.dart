// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:sunflower/sunflower.dart' as sunflower;
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:html';
import 'dart:io';
import 'dart:async';
import 'package:http/browser_client.dart';
import 'package:oauth2/oauth2.dart' as oauth2;

main() {
  querySelector('#text').text = 'Testing!';
  oauth();
}

void oauth() {
  final String identifier = "46f99a212f7cafc94e9285fdd3111bcba269bf0289c5ee8cef963e32c44858ed";
  final String secret = "7ed7f5263fe4d6efb44b487c7b390a38f6da272eec531edd07c23b7008c15aa8";
  final String redirectUrl = "https://bcubntmrdr.localtunnel.me/test.html";
//  window.location.assign(redirectUrl);
  String code = Uri.parse(window.location.toString()).queryParameters['code'];
  print(code);
  BrowserClient client = new BrowserClient();
  client.post("https://nwmjynlrgj.localtunnel.me/token?grant_type=authorization_code&code=${code}&redirect_uri=${redirectUrl}&client_id=${identifier}&client_secret=${secret}").then((response) {
    print(response.body);
  });
}



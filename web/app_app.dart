  import 'package:polymer/polymer.dart';
  import 'dart:async';
  import 'dart:html';
  import 'package:http/browser_client.dart';

  @CustomTag('app-app')
  class AppApp extends PolymerElement {
    AppApp.created() : super.created();
    ready() {
     final String identifier = "46f99a212f7cafc94e9285fdd3111bcba269bf0289c5ee8cef963e32c44858ed";
       final String secret = "7ed7f5263fe4d6efb44b487c7b390a38f6da272eec531edd07c23b7008c15aa8";
       final String redirectUrl = "https://bcubntmrdr.localtunnel.me/test.html";
//  window.location.assign(redirectUrl);
       String code = Uri.parse(window.location.toString()).queryParameters['code'];
       BrowserClient client = new BrowserClient();
       
       client.post("https://nwmjynlrgj.localtunnel.me/token?grant_type=authorization_code&code=${code}&redirect_uri=${redirectUrl}&client_id=${identifier}&client_secret=${secret}").then((response) {
         print(response.body);
         $["globals"].values["accessToken"] = response.body;
       }); 
    } 
  }
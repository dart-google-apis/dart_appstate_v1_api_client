library appstate_v1_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_appstate_v1_api/src/cloud_api_browser.dart';
import "package:google_appstate_v1_api/appstate_v1_api_client.dart";

/** The Google App State API. */
class Appstate extends Client with BrowserClient {

  /** OAuth Scope2: View and manage your data for this application */
  static const String APPSTATE_SCOPE = "https://www.googleapis.com/auth/appstate";

  final oauth.OAuth2 auth;

  Appstate([oauth.OAuth2 this.auth]);
}

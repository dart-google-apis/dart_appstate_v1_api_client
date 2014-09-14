library appstate_v1_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_appstate_v1_api/src/console_client.dart';

import "package:google_appstate_v1_api/appstate_v1_api_client.dart";

/** The Google App State API. */
@deprecated
class Appstate extends Client with ConsoleClient {

  /** OAuth Scope2: View and manage your data for this application */
  static const String APPSTATE_SCOPE = "https://www.googleapis.com/auth/appstate";

  final oauth2.OAuth2Console auth;

  Appstate([oauth2.OAuth2Console this.auth]);
}

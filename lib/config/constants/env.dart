import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  static String movieDbApiKey = dotenv.env['THE_MOVIEDB_API_KEY'] ?? '';
}

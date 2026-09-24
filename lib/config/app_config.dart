import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig {
  static const String _defaultBaseUrl = 'https://outbox.nablean.com/api/v1';
  static const String _defaultAdminBaseUrl = 'https://obadmin.nablean.com/api/v1';

  /// Base URL for the main API backend (loaded from .env BASE_URL, with fallback)
  static String get baseUrl {
    try {
      if (dotenv.isInitialized) {
        final val = dotenv.env['BASE_URL'];
        if (val != null && val.trim().isNotEmpty) {
          return val.trim();
        }
      }
    } catch (_) {}
    return const String.fromEnvironment('BASE_URL', defaultValue: _defaultBaseUrl);
  }

  /// Base URL for the admin API (loaded from .env ADMIN_BASE_URL, with fallback)
  static String get adminBaseUrl {
    try {
      if (dotenv.isInitialized) {
        final val = dotenv.env['ADMIN_BASE_URL'];
        if (val != null && val.trim().isNotEmpty) {
          return val.trim();
        }
      }
    } catch (_) {}
    return const String.fromEnvironment('ADMIN_BASE_URL', defaultValue: _defaultAdminBaseUrl);
  }
}



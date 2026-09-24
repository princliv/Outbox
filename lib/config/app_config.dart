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

  /// Google Android API Key (loaded from .env GOOGLE_ANDROID_API_KEY)
  static String get googleAndroidApiKey {
    try {
      if (dotenv.isInitialized) {
        final val = dotenv.env['GOOGLE_ANDROID_API_KEY'];
        if (val != null && val.trim().isNotEmpty) return val.trim();
      }
    } catch (_) {}
    return const String.fromEnvironment('GOOGLE_ANDROID_API_KEY', defaultValue: '');
  }

  /// Google iOS API Key (loaded from .env GOOGLE_IOS_API_KEY)
  static String get googleIosApiKey {
    try {
      if (dotenv.isInitialized) {
        final val = dotenv.env['GOOGLE_IOS_API_KEY'];
        if (val != null && val.trim().isNotEmpty) return val.trim();
      }
    } catch (_) {}
    return const String.fromEnvironment('GOOGLE_IOS_API_KEY', defaultValue: '');
  }

  /// Google Web API Key (loaded from .env GOOGLE_WEB_API_KEY)
  static String get googleWebApiKey {
    try {
      if (dotenv.isInitialized) {
        final val = dotenv.env['GOOGLE_WEB_API_KEY'];
        if (val != null && val.trim().isNotEmpty) return val.trim();
      }
    } catch (_) {}
    return const String.fromEnvironment('GOOGLE_WEB_API_KEY', defaultValue: '');
  }
}




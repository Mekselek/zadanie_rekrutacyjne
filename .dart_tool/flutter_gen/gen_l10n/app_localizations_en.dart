import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get header => 'Type your numbers';

  @override
  String get buttonTextFirstPage => 'Search';

  @override
  String get buttonTextSecondPage => 'Back';

  @override
  String get secondPageHeader => 'INVALID NUMBER IS:';

  @override
  String get errorMessage => 'Please use valid values';
}

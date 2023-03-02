import 'app_localizations.dart';

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get header => 'WPROWADŹ LICZBY';

  @override
  String get buttonTextFirstPage => 'Wyszukaj ';

  @override
  String get buttonTextSecondPage => 'Wróć';

  @override
  String get secondPageHeader => 'NIEPRAWIDŁOWA LICZBA TO:';

  @override
  String get errorMessage => 'Podaj prawidłowe wartości';
}

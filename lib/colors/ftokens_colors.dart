import 'dart:ui';

import 'package:flutter/material.dart';

import 'color_groups.dart';

/// all possible context groups used to configure the theme primary colors of a
/// specific context of features
enum ContextTheme {
  brand,
  neutral,
  cash,
  wealth,
  trade,
  business,
}

/// access point for FTokens color pallete for either white and dark themes.
/// avoid to reference [brightness] directly to check the right color to be
/// used.
/// Once the theme has been configured the colors provided by [FTokensColors]
/// will be the right color for the current system brightness configuration.
///
/// All consts of colors and constant intances related to colors should be
/// placed here
class FTokensColors {
  /// Core group of colors used as secondary and neutral colors from theme.
  final CoreGroup core;

  /// Current context group of colors used to define the main colors from theme.
  /// They can change depending of the screen needs.
  final ContextGroup context;

  /// all the contexts of colors. Used when some specific color of another theme
  /// different than the [context] is need.
  final Map<ContextTheme, ContextGroup> contexts;

  //// Current brightness of system. Affects [core] [context] and [contexts]
  final Brightness brightness;

  /// Default instance of colors to be used as fallback.
  /// The used values here will be the [_neutral] and [Brightness.light]
  static const instance = FTokensColors(
    core: _lightCore,
    context: _neutral,
    contexts: _lightContexts,
    brightness: Brightness.light,
  );

  static const _neutral = ContextGroup(
    primary: Color(0xFF2F2F33),
    primaryDarken: Color(0xFFC9CAD4),
    primaryHover: Color(0xFF1F1F1F),
    primaryActive: Color(0xFF0F0F0F),
    secondary: Color(0xFF0F0F0F),
    secondaryDarken: Color(0xFF0F0F0F),
    link: Color(0xFF0F0F0F),
    overPrimary: Color(0xFFFFFFFF),
  );

  static const _lightContexts = {
    ContextTheme.brand: ContextGroup(
      primary: Color(0xFFE02B57),
      primaryDarken: Color(0xFFC7123E),
      primaryHover: Color(0xFFC7123E),
      primaryActive: Color(0xFF9C082C),
      secondary: Color(0xFFFFF2F5),
      secondaryDarken: Color(0xFFFFD9E2),
      link: Color(0xFFE02B57),
      overPrimary: Color(0xFFFFFFFF),
    ),
    ContextTheme.neutral: _neutral,
    ContextTheme.cash: ContextGroup(
      primary: Color(0xFF1BB958),
      primaryDarken: Color(0xFF0C873C),
      primaryHover: Color(0xFF0C873C),
      primaryActive: Color(0xFF076E2F),
      secondary: Color(0xFFEBFFF3),
      secondaryDarken: Color(0xFFC7FADB),
      link: Color(0xFF1BB958),
      overPrimary: Color(0xFFFFFFFF),
    ),
    ContextTheme.wealth: ContextGroup(
      primary: Color(0xFFFF9200),
      primaryDarken: Color(0xFFCC7500),
      primaryHover: Color(0xFFCC7500),
      primaryActive: Color(0xFF995800),
      secondary: Color(0xFFFFF6EB),
      secondaryDarken: Color(0xFFFFE4BF),
      link: Color(0xFFFF9200),
      overPrimary: Color(0xFFFFFFFF),
    ),
    ContextTheme.trade: ContextGroup(
      primary: Color(0xFF0073ED),
      primaryDarken: Color(0xFF0063CC),
      primaryHover: Color(0xFF0063CC),
      primaryActive: Color(0xFF0054AD),
      secondary: Color(0xFFEBF5FF),
      secondaryDarken: Color(0xFFCCE5FF),
      link: Color(0xFF0073ED),
      overPrimary: Color(0xFFFFFFFF),
    ),
    ContextTheme.business: ContextGroup(
      primary: Color(0xFF7BC491),
      primaryDarken: Color(0xFF55AB6F),
      primaryHover: Color(0xFF55AB6F),
      primaryActive: Color(0xFF358E50),
      secondary: Color(0xFFE8FAED),
      secondaryDarken: Color(0xFFCBF2D7),
      link: Color(0xFF7BC491),
      overPrimary: Color(0xFFFFFFFF),
    ),
  };

  static const _darkContexts = {
    ContextTheme.brand: ContextGroup(
      primary: Color(0xFFE02B57),
      primaryDarken: Color(0xFFC7123E),
      primaryHover: Color(0xFFC7123E),
      primaryActive: Color(0xFF9C082C),
      secondary: Color(0xFFFFF2F5),
      secondaryDarken: Color(0xFFFFD9E2),
      link: Color(0xFFE02B57),
      overPrimary: Color(0xFFFFFFFF),
    ),
    ContextTheme.neutral: ContextGroup(
      primary: Color(0xFFFFFFFF),
      primaryDarken: Color(0xFF4A4B52),
      primaryHover: Color(0xFFF5F6FA),
      primaryActive: Color(0xFFE3E4EB),
      secondary: Color(0xFF5C5D66),
      secondaryDarken: Color(0xFF4A4B52),
      link: Color(0xFFFFFFFF),
      overPrimary: Color(0xFF000000),
    ),
    ContextTheme.cash: ContextGroup(
      primary: Color(0xFF1BB958),
      primaryDarken: Color(0xFF0C873C),
      primaryHover: Color(0xFF0C873C),
      primaryActive: Color(0xFF076E2F),
      secondary: Color(0xFFF2FFF7),
      secondaryDarken: Color(0xFFC7FADB),
      link: Color(0xFF1BB958),
      overPrimary: Color(0xFFFFFFFF),
    ),
    ContextTheme.wealth: ContextGroup(
      primary: Color(0xFFFF9200),
      primaryDarken: Color(0xFFCC7500),
      primaryHover: Color(0xFFCC7500),
      primaryActive: Color(0xFF995800),
      secondary: Color(0xFFFFFAF2),
      secondaryDarken: Color(0xFFFFE4BF),
      link: Color(0xFFFF9200),
      overPrimary: Color(0xFFFFFFFF),
    ),
    ContextTheme.trade: ContextGroup(
      primary: Color(0xFF0073ED),
      primaryDarken: Color(0xFF0063CC),
      primaryHover: Color(0xFF0063CC),
      primaryActive: Color(0xFF0054AD),
      secondary: Color(0xFFE5F2FF),
      secondaryDarken: Color(0xFFE5F2FF),
      link: Color(0xFF0073ED),
      overPrimary: Color(0xFFFFFFFF),
    ),
    ContextTheme.business: ContextGroup(
      primary: Color(0xFF7BC491),
      primaryDarken: Color(0xFF55AB6F),
      primaryHover: Color(0xFF55AB6F),
      primaryActive: Color(0xFF358E50),
      secondary: Color(0xFFDFFAE7),
      secondaryDarken: Color(0xFFCBF2D7),
      link: Color(0xFF7BC491),
      overPrimary: Color(0xFFFFFFFF),
    ),
  };

  static const _lightCore = CoreGroup(
      text: TextGroup(
        primary: Color(0xFF2F2F33),
        secondary: Color(0xFF757680),
        placeholder: Color(0xFF9599A6),
        disabled: Color(0xFFC9CAD4),
        negative: Color(0x3FFFFFFF),
        overImage: Color(0xFFFFFFFF),
        alpha: Color(0xFFFFFFFF),
        onError: Color(0xFFCD1A1A),
        onSuccess: Color(0xFF008061),
      ),
      background: BackgroundGroup(
        primary: Color(0xFFF5F6FA),
        secondary: Color(0xFFFFFFFF),
        tertiary: Color(0xFFE3E4EB),
        quartenary: Color(0xFFC9CAD4),
        hover: Color(0xFFB9BAC7),
        overlay: Color(0xA61F1F1F),
      ),
      divider: DividerGroup(
        primary: Color(0xFFE3E4EB),
        opacity: Color(0x3D2F2F33),
        navbar: Color(0x33FFFFFF),
      ),
      element: ElementGroup(
        primary: Color(0xFF2F2F33),
        secondary: Color(0xFF757680),
        placeholder: Color(0xFF9599A6),
        disabled: Color(0xFFC9CAD4),
        negative: Color(0xFFFFFFFF),
        overImage: Color(0xFFFFFFFF),
        onError: Color(0xFFCD1A1A),
        onSuccess: Color(0xFF008061),
      ),
      base: BaseGroup(
        secondary: Color(0xFF757680),
        secondaryHover: Color(0xFF5C5D66),
        secondaryActive: Color(0xFF4A4B52),
        overSecondary: Color(0xFFFFFFFF),
        disabled: Color(0xFFC9CAD4),
        overDisabled: Color(0xFF9599A6),
      ),
      status: StatusGroup(
        positive: Color(0xFF0C5F2C),
        alert: Color(0xFF6B3D00),
        negative: Color(0xFF9A1414),
        info: Color(0xFF004C99),
        positiveBackground: Color(0xFFD6FFDF),
        alertBackground: Color(0xFFFFE5C2),
        negativeBackground: Color(0xFFFCE4E4),
        infoBackground: Color(0xFFE0F1FF),
      ),
      monetary: MonetaryGroup(
        positive: Color(0xFF008061),
        negative: Color(0xFFCD1A1A),
      ),
      progress: ProgressGroup(
        positive: Color(0xFF008061),
        negative: Color(0xFFCD1A1A),
        alert: Color(0xFFBB7311),
        background: Color(0xFFC9CAD4),
        disabled: Color(0xFF757680),
      ),
      asset: AssetGroup(
        fixedIncome: Color(0xFF006BD6),
        stocks: Color(0xFFFFB500),
        multimarket: Color(0xFFF6678D),
        others: Color(0xFFEE2E5D),
      ),
      benchmark: BenchmarkGroup(
        interest: Color(0xFF3599FF),
        ipca: Color(0xFF776DF9),
        cdi: Color(0xFFF5710C),
        savings: Color(0xFFEE2E5D),
      ),
      feature: FeatureGroup(
        invites: Color(0xFF05F277),
        bakingAccount: Color(0xFFFFFFFF),
      ),
      transaction: TransactionGroup(success: Color(0xFF15A84E)));

  static const _darkCore = CoreGroup(
      text: TextGroup(
        primary: Color(0xFFFFFFFF),
        secondary: Color(0xFF757680),
        placeholder: Color(0xFF7E818C),
        disabled: Color(0xFF5C5D66),
        negative: Color(0xB3FFFFFF),
        overImage: Color(0xFF000000),
        alpha: Color(0xFFFFFFFF),
        onError: Color(0xFFF73939),
        onSuccess: Color(0xFF16B690),
      ),
      background: BackgroundGroup(
        primary: Color(0xFF000000),
        secondary: Color(0xFF2F2F33),
        tertiary: Color(0xFF474952),
        quartenary: Color(0xFF757680),
        hover: Color(0xFFC9CAD4),
        overlay: Color(0xA61F1F1F),
      ),
      divider: DividerGroup(
        primary: Color(0xFF1F1F1F),
        opacity: Color(0x3D000000),
        navbar: Color(0x33FFFFFF),
      ),
      element: ElementGroup(
        primary: Color(0xFFFFFFFF),
        secondary: Color(0xFF757680),
        placeholder: Color(0xFF7E818C),
        disabled: Color(0xFF5C5D66),
        negative: Color(0xFF000000),
        overImage: Color(0xFFFFFFFF),
        onError: Color(0xFFF73939),
        onSuccess: Color(0xFF16B690),
      ),
      base: BaseGroup(
        secondary: Color(0xFF474952),
        secondaryHover: Color(0xFF3A3B40),
        secondaryActive: Color(0xFF2F2F33),
        overSecondary: Color(0xFFFFFFFF),
        disabled: Color(0xFF5C5D66),
        overDisabled: Color(0xFF9599A6),
      ),
      status: StatusGroup(
        positive: Color(0xFFD6FFDF),
        alert: Color(0xFFFFE5C2),
        negative: Color(0xFFFCE4E4),
        info: Color(0xFFE0F1FF),
        positiveBackground: Color(0xFF27583C),
        alertBackground: Color(0xFF64461C),
        negativeBackground: Color(0xFF862C2C),
        infoBackground: Color(0xFF215182),
      ),
      monetary: MonetaryGroup(
        positive: Color(0xFF16B690),
        negative: Color(0xFFF73939),
      ),
      progress: ProgressGroup(
        positive: Color(0xFF16B690),
        negative: Color(0xFFF73939),
        alert: Color(0xFFC67D19),
        background: Color(0xFF757680),
        disabled: Color(0xFF2F2F33),
      ),
      asset: AssetGroup(
        fixedIncome: Color(0xFF0B78E5),
        stocks: Color(0xFFFFB90D),
        multimarket: Color(0xFFFF789C),
        others: Color(0xFFFF789C),
      ),
      benchmark: BenchmarkGroup(
        interest: Color(0xFF409EFF),
        ipca: Color(0xFF867DFF),
        cdi: Color(0xFFFF7D1A),
        savings: Color(0xFFFF3D6D),
      ),
      feature: FeatureGroup(
        invites: Color(0xFF12FF84),
        bakingAccount: Color(0xFFFFFFFF),
      ),
      transaction: TransactionGroup(success: Color(0xFF15A84E)));

  const FTokensColors({
    required this.core,
    required this.context,
    required this.contexts,
    required this.brightness,
  });

  /// provides the light colors using the given [ContextTheme] as the reference
  /// to determine the [ContextGroup] set on [current] value.
  /// The value assigned to [current] will be the corresponding value of
  /// [_light] with the given [theme] used as key. Force non-null is
  /// allowed for it here.
  ///
  /// * `currentContext` is the key to be used to into [_light] to find the
  /// right [ContextGroup].
  FTokensColors.light(ContextTheme theme)
      : this(
          core: _lightCore,
          contexts: _lightContexts,
          context: _lightContexts[theme]!,
          brightness: Brightness.light,
        );

  /// provides the dark colors using the given [ContextTheme] as the reference
  /// to determine the [ContextGroup] set on [current] value.
  /// The value assigned to [current] will be the corresponding value of
  /// [_dark] with the given [theme] used as key. Force non-null is
  /// allowed for it here.
  ///
  /// * `currentContext` is the key to be used to into [_dark] to find the
  /// right [ContextGroup].
  FTokensColors.dark(ContextTheme theme)
      : this(
          core: _darkCore,
          contexts: _darkContexts,
          context: _darkContexts[theme]!,
          brightness: Brightness.dark,
        );
}

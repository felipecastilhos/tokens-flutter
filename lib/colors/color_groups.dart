import 'dart:ui';

class ContextGroup {
  final Color primary;
  final Color primaryDarken;
  final Color primaryHover;
  final Color primaryActive;
  final Color secondary;
  final Color secondaryDarken;
  final Color link;
  final Color overPrimary;

  const ContextGroup({
    required this.primary,
    required this.primaryDarken,
    required this.primaryHover,
    required this.primaryActive,
    required this.secondary,
    required this.secondaryDarken,
    required this.link,
    required this.overPrimary,
  });
}

class CoreGroup {
  final TextGroup text;
  final ElementGroup element;
  final BackgroundGroup background;
  final DividerGroup divider;
  final MonetaryGroup monetary;
  final FeatureGroup feature;
  final BaseGroup base;
  final StatusGroup status;
  final ProgressGroup progress;
  final AssetGroup asset;
  final BenchmarkGroup benchmark;
  final TransactionGroup transaction;

  const CoreGroup(
      {required this.text,
      required this.element,
      required this.background,
      required this.divider,
      required this.monetary,
      required this.feature,
      required this.base,
      required this.status,
      required this.progress,
      required this.asset,
      required this.benchmark,
      required this.transaction});
}

class AssetGroup {
  final Color fixedIncome;
  final Color stocks;
  final Color multimarket;
  final Color others;

  const AssetGroup({
    required this.fixedIncome,
    required this.stocks,
    required this.multimarket,
    required this.others,
  });
}

class BackgroundGroup {
  final Color primary;
  final Color secondary;
  final Color tertiary;
  final Color quartenary;
  final Color hover;
  final Color overlay;

  const BackgroundGroup({
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.quartenary,
    required this.hover,
    required this.overlay,
  });
}

class BaseGroup {
  final Color secondary;
  final Color secondaryHover;
  final Color secondaryActive;
  final Color overSecondary;
  final Color disabled;
  final Color overDisabled;

  const BaseGroup({
    required this.secondary,
    required this.secondaryHover,
    required this.secondaryActive,
    required this.overSecondary,
    required this.disabled,
    required this.overDisabled,
  });
}

class BenchmarkGroup {
  final Color interest;
  final Color ipca;
  final Color cdi;
  final Color savings;

  const BenchmarkGroup({
    required this.interest,
    required this.ipca,
    required this.cdi,
    required this.savings,
  });
}

class DividerGroup {
  final Color primary;
  final Color opacity;
  final Color navbar;

  const DividerGroup({
    required this.primary,
    required this.opacity,
    required this.navbar,
  });
}

class ElementGroup {
  final Color primary;
  final Color secondary;
  final Color placeholder;
  final Color disabled;
  final Color negative;
  final Color overImage;
  final Color onError;
  final Color onSuccess;

  const ElementGroup({
    required this.primary,
    required this.secondary,
    required this.placeholder,
    required this.disabled,
    required this.negative,
    required this.overImage,
    required this.onError,
    required this.onSuccess,
  });
}

class FeatureGroup {
  final Color invites;
  final Color bakingAccount;

  const FeatureGroup({
    required this.invites,
    required this.bakingAccount,
  });
}

class MonetaryGroup {
  final Color positive;
  final Color negative;

  const MonetaryGroup({
    required this.positive,
    required this.negative,
  });
}

class ProgressGroup {
  final Color positive;
  final Color negative;
  final Color alert;
  final Color background;
  final Color disabled;

  const ProgressGroup({
    required this.positive,
    required this.negative,
    required this.alert,
    required this.background,
    required this.disabled,
  });
}

class StatusGroup {
  final Color positive;
  final Color alert;
  final Color negative;
  final Color info;
  final Color positiveBackground;
  final Color alertBackground;
  final Color negativeBackground;
  final Color infoBackground;

  const StatusGroup({
    required this.positive,
    required this.alert,
    required this.negative,
    required this.info,
    required this.positiveBackground,
    required this.alertBackground,
    required this.negativeBackground,
    required this.infoBackground,
  });
}

class TextGroup {
  final Color primary;
  final Color secondary;
  final Color placeholder;
  final Color disabled;
  final Color negative;
  final Color overImage;
  final Color alpha;
  final Color onError;
  final Color onSuccess;

  const TextGroup({
    required this.primary,
    required this.secondary,
    required this.placeholder,
    required this.disabled,
    required this.negative,
    required this.overImage,
    required this.alpha,
    required this.onError,
    required this.onSuccess,
  });
}

class TransactionGroup {
  final Color success;

  const TransactionGroup({required this.success});
}

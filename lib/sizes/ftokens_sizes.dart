import 'package:flutter_tokens/sizes/size_groups.dart';

class FTokensSizes {
  final BorderGroup border;
  final RadiusGroup radius;
  final SpacingGroup spacing;

  static FTokensSizes instance = const FTokensSizes._(
    border: BorderGroup(
      x400: 1.0,
      x500: 2.0,
      x600: 3.0,
    ),
    radius: RadiusGroup(
      x100: 4.0,
      x200: 8.0,
      x300: 12.0,
      x400: 16.0,
      max: 1000.0,
    ),
    spacing: SpacingGroup(
      x75: 2.0,
      x150: 4.0,
      x300: 8.0,
      x350: 12.0,
      x400: 16.0,
      x450: 20.0,
      x500: 24.0,
      x600: 32.0,
      x700: 40.0,
      x800: 48.0,
      x900: 56.0,
      x1000: 64.0,
      x1100: 72.0,
      x1200: 80.0,
    ),
  );

  const FTokensSizes._({
    required this.border,
    required this.radius,
    required this.spacing,
  });
}

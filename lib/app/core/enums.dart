enum Norms {
  iso22768('ISO 22768');

  const Norms(this.label);
  final String label;
}

enum NormClasses {
  f('f'),
  m('m'),
  c('c'),
  v('v');

  const NormClasses(this.label);
  final String label;
}

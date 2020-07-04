version 1.0

task JeDebarcode {
  input {
    String required_dot
    String barcoded_dot
  }
  command <<<
    je debarcode \
      ~{required_dot} \
      ~{barcoded_dot}
  >>>
  parameter_meta {
    required_dot: "Cannot be used in conjuction with option(s) USE_EMBASE (EM)"
    barcoded_dot: "Default value: null. "
  }
}
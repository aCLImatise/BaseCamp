version 1.0

task _mwfilter {
  input {
    Boolean? tolerance
  }
  command <<<
    _mwfilter \
      ~{true="-tolerance" false="" tolerance}
  >>>
  parameter_meta {
    tolerance: "float      [50.0] Ppm tolerance (Any numeric value)"
  }
}
version 1.0

task Mwfilter {
  input {
    Boolean? tolerance
  }
  command <<<
    mwfilter \
      ~{true="-tolerance" false="" tolerance}
  >>>
  parameter_meta {
    tolerance: "float      [50.0] Ppm tolerance (Any numeric value)"
  }
}
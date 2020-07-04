version 1.0

task _mwcontam {
  input {
    Boolean? tolerance
  }
  command <<<
    _mwcontam \
      ~{true="-tolerance" false="" tolerance}
  >>>
  parameter_meta {
    tolerance: "float      [50.0] Ppm tolerance (Any numeric value)"
  }
}
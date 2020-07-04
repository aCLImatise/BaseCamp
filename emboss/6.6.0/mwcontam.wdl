version 1.0

task Mwcontam {
  input {
    Boolean? tolerance
  }
  command <<<
    mwcontam \
      ~{true="-tolerance" false="" tolerance}
  >>>
  parameter_meta {
    tolerance: "float      [50.0] Ppm tolerance (Any numeric value)"
  }
}
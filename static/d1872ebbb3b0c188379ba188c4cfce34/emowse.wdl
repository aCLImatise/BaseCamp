version 1.0

task Emowse {
  input {
    Boolean? weight
    Boolean? mono
  }
  command <<<
    emowse \
      ~{true="-weight" false="" weight} \
      ~{true="-mono" false="" mono}
  >>>
  parameter_meta {
    weight: "integer    [0] Whole sequence molwt (Any integer value)"
    mono: "boolean    [N] Use monoisotopic weights"
  }
}
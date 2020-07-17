version 1.0

task Arb2Ascii {
  input {
    Boolean? r
    String source_dot_arb
  }
  command <<<
    arb_2_ascii \
      ~{source_dot_arb} \
      ~{true="-r" false="" r}
  >>>
  parameter_meta {
    r: ""
    source_dot_arb: ""
  }
}
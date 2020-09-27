version 1.0

task Arb2Ascii {
  input {
    Boolean? r
    String source_dot_arb
  }
  command <<<
    arb_2_ascii \
      ~{source_dot_arb} \
      ~{if (r) then "-r" else ""}
  >>>
  parameter_meta {
    r: ""
    source_dot_arb: ""
  }
  output {
    File out_stdout = stdout()
  }
}
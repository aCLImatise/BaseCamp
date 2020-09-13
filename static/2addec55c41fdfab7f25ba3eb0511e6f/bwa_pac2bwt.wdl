version 1.0

task BwaPac2bwt {
  input {
    Boolean? d
    String in_dot_pac
    String out_dot_bwt
  }
  command <<<
    bwa pac2bwt \
      ~{in_dot_pac} \
      ~{out_dot_bwt} \
      ~{if (d) then "-d" else ""}
  >>>
  parameter_meta {
    d: ""
    in_dot_pac: ""
    out_dot_bwt: ""
  }
  output {
    File out_stdout = stdout()
  }
}
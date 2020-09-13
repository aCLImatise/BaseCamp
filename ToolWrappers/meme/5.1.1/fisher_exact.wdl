version 1.0

task FisherExact {
  input {
    String compute
    String pr
    String pos_succ
    String pos
    String the
    String fisher
    String neg_succ
    String exact
    String test
    String p_value
  }
  command <<<
    fisher_exact \
      ~{compute} \
      ~{pr} \
      ~{pos_succ} \
      ~{pos} \
      ~{the} \
      ~{fisher} \
      ~{neg_succ} \
      ~{exact} \
      ~{test} \
      ~{p_value}
  >>>
  parameter_meta {
    compute: ""
    pr: ""
    pos_succ: ""
    pos: ""
    the: ""
    fisher: ""
    neg_succ: ""
    exact: ""
    test: ""
    p_value: ""
  }
  output {
    File out_stdout = stdout()
  }
}
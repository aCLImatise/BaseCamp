version 1.0

task FisherExactPos {
  input {
    String fisher_exact
    String pos_succ
    String pos
    String neg_succ
    String neg
  }
  command <<<
    fisher_exact pos \
      ~{fisher_exact} \
      ~{pos_succ} \
      ~{pos} \
      ~{neg_succ} \
      ~{neg}
  >>>
  parameter_meta {
    fisher_exact: ""
    pos_succ: ""
    pos: ""
    neg_succ: ""
    neg: ""
  }
}
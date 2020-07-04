version 1.0

task FisherExactPosSucc {
  input {
    String pos
    String neg_succ
    String neg
  }
  command <<<
    fisher_exact pos_succ \
      ~{pos} \
      ~{neg_succ} \
      ~{neg}
  >>>
  parameter_meta {
    pos: ""
    neg_succ: ""
    neg: ""
  }
}
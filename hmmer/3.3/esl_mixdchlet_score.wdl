version 1.0

task EslMixdchletScore {
  input {
    Boolean? options
    String mix_dch_let_file
    String counts_file
  }
  command <<<
    esl-mixdchlet score \
      ~{mix_dch_let_file} \
      ~{counts_file} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    mix_dch_let_file: ""
    counts_file: ""
  }
}
version 1.0

task EslMixdchletFitK {
  input {
    Boolean? options
    String esl_mix_dch_let
    String fit
    String q
    String k
    String in_count_file
    String out_mix_dch_let
  }
  command <<<
    esl-mixdchlet fit K \
      ~{esl_mix_dch_let} \
      ~{fit} \
      ~{q} \
      ~{k} \
      ~{in_count_file} \
      ~{out_mix_dch_let} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    esl_mix_dch_let: ""
    fit: ""
    q: ""
    k: ""
    in_count_file: ""
    out_mix_dch_let: ""
  }
}
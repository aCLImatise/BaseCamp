version 1.0

task EslMixdchletFitQ {
  input {
    Boolean? options
    String k
    String in_count_file
    String out_mix_dch_let
  }
  command <<<
    esl-mixdchlet fit Q \
      ~{k} \
      ~{in_count_file} \
      ~{out_mix_dch_let} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    k: ""
    in_count_file: ""
    out_mix_dch_let: ""
  }
}
version 1.0

task RsatSeqproba {
  input {
    String seq_proba
    String util
    String convert_background_model
  }
  command <<<
    rsat seq_proba \
      ~{seq_proba} \
      ~{util} \
      ~{convert_background_model}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    seq_proba: "[1mDESCRIPTION[0m"
    util: "[1mUSAGE[0m"
    convert_background_model: "matrix-scan"
  }
  output {
    File out_stdout = stdout()
  }
}
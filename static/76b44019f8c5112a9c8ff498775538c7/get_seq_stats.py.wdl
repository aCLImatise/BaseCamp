version 1.0

task GetSeqStatspy {
  input {
    String summarize
    String sequence
    String lengths
    String in
    String fast_a
  }
  command <<<
    get_seq_stats_py \
      ~{summarize} \
      ~{sequence} \
      ~{lengths} \
      ~{in} \
      ~{fast_a}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    summarize: ""
    sequence: ""
    lengths: ""
    in: ""
    fast_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}
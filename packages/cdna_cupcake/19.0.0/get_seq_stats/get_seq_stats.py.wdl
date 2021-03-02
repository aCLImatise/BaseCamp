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
    docker: "quay.io/biocontainers/cdna_cupcake:19.0.0--py37h97743b1_0"
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
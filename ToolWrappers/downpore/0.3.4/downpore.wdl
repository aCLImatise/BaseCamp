version 1.0

task Downpore {
  input {
    String overlap
    String trim
    String consensus
    String correct
  }
  command <<<
    downpore \
      ~{overlap} \
      ~{trim} \
      ~{consensus} \
      ~{correct}
  >>>
  runtime {
    docker: "quay.io/biocontainers/downpore:0.3.4--h375a9b1_0"
  }
  parameter_meta {
    overlap: "map"
    trim: "subseq"
    consensus: "align"
    correct: "kmers"
  }
  output {
    File out_stdout = stdout()
  }
}
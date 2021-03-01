version 1.0

task KseqSplit {
  command <<<
    kseq_split
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
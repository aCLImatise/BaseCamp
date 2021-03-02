version 1.0

task Reducekmers {
  command <<<
    reduce_kmers
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
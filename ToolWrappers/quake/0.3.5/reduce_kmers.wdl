version 1.0

task Reducekmers {
  command <<<
    reduce_kmers
  >>>
  output {
    File out_stdout = stdout()
  }
}
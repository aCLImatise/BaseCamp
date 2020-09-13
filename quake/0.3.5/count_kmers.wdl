version 1.0

task Countkmers {
  command <<<
    count_kmers
  >>>
  output {
    File out_stdout = stdout()
  }
}
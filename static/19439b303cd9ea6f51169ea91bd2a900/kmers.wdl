version 1.0

task Kmers {
  command <<<
    kmers
  >>>
  output {
    File out_stdout = stdout()
  }
}
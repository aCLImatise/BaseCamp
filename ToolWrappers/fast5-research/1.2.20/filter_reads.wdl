version 1.0

task FilterReads {
  command <<<
    filter_reads
  >>>
  output {
    File out_stdout = stdout()
  }
}
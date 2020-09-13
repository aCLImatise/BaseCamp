version 1.0

task ShuffleReads {
  command <<<
    shuffle_reads
  >>>
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task ShuffleReadso {
  command <<<
    shuffle_reads_o
  >>>
  output {
    File out_stdout = stdout()
  }
}
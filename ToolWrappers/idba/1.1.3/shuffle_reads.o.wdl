version 1.0

task ShuffleReadso {
  command <<<
    shuffle_reads_o
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
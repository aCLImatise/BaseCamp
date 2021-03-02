version 1.0

task ShuffleReads {
  command <<<
    shuffle_reads
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
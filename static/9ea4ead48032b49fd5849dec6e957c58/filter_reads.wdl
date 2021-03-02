version 1.0

task FilterReads {
  command <<<
    filter_reads
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
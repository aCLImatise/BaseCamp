version 1.0

task ClassifyReadspl {
  command <<<
    classify_reads_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
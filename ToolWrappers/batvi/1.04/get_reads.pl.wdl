version 1.0

task GetReadspl {
  command <<<
    get_reads_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
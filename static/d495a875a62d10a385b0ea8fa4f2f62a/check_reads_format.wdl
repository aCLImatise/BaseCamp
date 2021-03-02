version 1.0

task CheckReadsFormat {
  command <<<
    check_reads_format
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
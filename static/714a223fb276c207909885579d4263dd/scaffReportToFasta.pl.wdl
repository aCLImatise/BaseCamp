version 1.0

task ScaffReportToFastapl {
  command <<<
    scaffReportToFasta_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
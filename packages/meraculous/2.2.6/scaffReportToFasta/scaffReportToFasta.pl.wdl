version 1.0

task ScaffReportToFastapl {
  command <<<
    scaffReportToFasta_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
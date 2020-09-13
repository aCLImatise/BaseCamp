version 1.0

task DropReportRsc {
  command <<<
    dropReport_Rsc
  >>>
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task DropReportRsc {
  command <<<
    dropReport_Rsc
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
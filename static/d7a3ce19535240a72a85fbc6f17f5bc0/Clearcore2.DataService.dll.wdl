version 1.0

task Clearcore2DataServicedll {
  command <<<
    Clearcore2_DataService_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
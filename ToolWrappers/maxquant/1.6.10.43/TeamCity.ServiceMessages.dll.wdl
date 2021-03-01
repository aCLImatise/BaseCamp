version 1.0

task TeamCityServiceMessagesdll {
  command <<<
    TeamCity_ServiceMessages_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
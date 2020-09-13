version 1.0

task TeamCityServiceMessagesdll {
  command <<<
    TeamCity_ServiceMessages_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}
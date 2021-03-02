version 1.0

task ThermoRawFileParserexeconfig {
  command <<<
    ThermoRawFileParser_exe_config
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
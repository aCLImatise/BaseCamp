version 1.0

task ThermoRawFileParserexeconfig {
  command <<<
    ThermoRawFileParser_exe_config
  >>>
  output {
    File out_stdout = stdout()
  }
}
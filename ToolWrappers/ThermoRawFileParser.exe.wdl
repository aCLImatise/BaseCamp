version 1.0

task ThermoRawFileParserexe {
  command <<<
    ThermoRawFileParser_exe
  >>>
  output {
    File out_stdout = stdout()
  }
}
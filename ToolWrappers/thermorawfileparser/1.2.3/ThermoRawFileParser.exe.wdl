version 1.0

task ThermoRawFileParserexe {
  command <<<
    ThermoRawFileParser_exe
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
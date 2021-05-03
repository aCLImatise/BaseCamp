version 1.0

task ThermoRawFileParserexe {
  command <<<
    ThermoRawFileParser_exe
  >>>
  runtime {
    docker: "quay.io/biocontainers/thermorawfileparser:1.3.4--ha8f3691_0"
  }
  output {
    File out_stdout = stdout()
  }
}
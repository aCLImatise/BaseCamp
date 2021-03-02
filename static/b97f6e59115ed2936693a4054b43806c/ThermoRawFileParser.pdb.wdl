version 1.0

task ThermoRawFileParserpdb {
  command <<<
    ThermoRawFileParser_pdb
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
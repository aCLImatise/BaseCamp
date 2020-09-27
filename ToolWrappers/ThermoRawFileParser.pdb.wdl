version 1.0

task ThermoRawFileParserpdb {
  command <<<
    ThermoRawFileParser_pdb
  >>>
  output {
    File out_stdout = stdout()
  }
}
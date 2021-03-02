version 1.0

task ThermoRawFileParserpdb {
  command <<<
    ThermoRawFileParser_pdb
  >>>
  runtime {
    docker: "quay.io/biocontainers/thermorawfileparser:1.3.2--0"
  }
  output {
    File out_stdout = stdout()
  }
}
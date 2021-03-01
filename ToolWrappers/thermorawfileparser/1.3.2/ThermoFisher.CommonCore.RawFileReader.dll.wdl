version 1.0

task ThermoFisherCommonCoreRawFileReaderdll {
  command <<<
    ThermoFisher_CommonCore_RawFileReader_dll
  >>>
  runtime {
    docker: "quay.io/biocontainers/thermorawfileparser:1.3.2--0"
  }
  output {
    File out_stdout = stdout()
  }
}
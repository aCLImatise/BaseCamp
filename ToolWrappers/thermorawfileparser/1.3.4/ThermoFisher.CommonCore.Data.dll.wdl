version 1.0

task ThermoFisherCommonCoreDatadll {
  command <<<
    ThermoFisher_CommonCore_Data_dll
  >>>
  runtime {
    docker: "quay.io/biocontainers/thermorawfileparser:1.3.4--ha8f3691_0"
  }
  output {
    File out_stdout = stdout()
  }
}
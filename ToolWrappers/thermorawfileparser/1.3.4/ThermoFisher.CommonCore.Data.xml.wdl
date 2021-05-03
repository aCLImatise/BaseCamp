version 1.0

task ThermoFisherCommonCoreDataxml {
  command <<<
    ThermoFisher_CommonCore_Data_xml
  >>>
  runtime {
    docker: "quay.io/biocontainers/thermorawfileparser:1.3.4--ha8f3691_0"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task ThermoFisherCommonCoreDataxml {
  command <<<
    ThermoFisher_CommonCore_Data_xml
  >>>
  runtime {
    docker: "quay.io/biocontainers/thermorawfileparser:1.3.3--ha8f3691_1"
  }
  output {
    File out_stdout = stdout()
  }
}
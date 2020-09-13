version 1.0

task ThermoFisherCommonCoreDataxml {
  command <<<
    ThermoFisher_CommonCore_Data_xml
  >>>
  output {
    File out_stdout = stdout()
  }
}
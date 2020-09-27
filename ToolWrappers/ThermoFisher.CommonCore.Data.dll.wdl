version 1.0

task ThermoFisherCommonCoreDatadll {
  command <<<
    ThermoFisher_CommonCore_Data_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}
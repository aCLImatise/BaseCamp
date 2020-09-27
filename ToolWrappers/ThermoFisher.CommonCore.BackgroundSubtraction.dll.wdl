version 1.0

task ThermoFisherCommonCoreBackgroundSubtractiondll {
  command <<<
    ThermoFisher_CommonCore_BackgroundSubtraction_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}
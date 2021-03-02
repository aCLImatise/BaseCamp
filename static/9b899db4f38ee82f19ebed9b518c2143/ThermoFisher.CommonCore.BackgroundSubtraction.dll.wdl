version 1.0

task ThermoFisherCommonCoreBackgroundSubtractiondll {
  command <<<
    ThermoFisher_CommonCore_BackgroundSubtraction_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
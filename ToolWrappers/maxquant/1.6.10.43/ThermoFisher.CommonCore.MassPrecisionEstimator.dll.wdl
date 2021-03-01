version 1.0

task ThermoFisherCommonCoreMassPrecisionEstimatordll {
  command <<<
    ThermoFisher_CommonCore_MassPrecisionEstimator_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
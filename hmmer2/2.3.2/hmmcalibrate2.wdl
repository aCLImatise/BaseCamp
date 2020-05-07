version 1.0

task Hmmcalibrate2 {
  input {
    String cpuCpu
    String fixedFixed
    String histHistFile
    String meanMean
    String numNum
    Boolean pvmPvm
    String sdSd
    String seedSeed
    String? hmmcalibrateHmmcalibrate
    String? hmmHmmFile
  }
  command <<<
    hmmcalibrate2 \
      ~{hmmcalibrateHmmcalibrate} \
      ~{if defined(cpuCpu) then ("--cpu " +  '"' + cpuCpu + '"') else ""} \
      ~{if defined(fixedFixed) then ("--fixed " +  '"' + fixedFixed + '"') else ""} \
      ~{if defined(histHistFile) then ("--histfile " +  '"' + histHistFile + '"') else ""} \
      ~{if defined(meanMean) then ("--mean " +  '"' + meanMean + '"') else ""} \
      ~{if defined(numNum) then ("--num " +  '"' + numNum + '"') else ""} \
      ~{true="--pvm" false="" pvmPvm} \
      ~{if defined(sdSd) then ("--sd " +  '"' + sdSd + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{hmmHmmFile}
  >>>
}
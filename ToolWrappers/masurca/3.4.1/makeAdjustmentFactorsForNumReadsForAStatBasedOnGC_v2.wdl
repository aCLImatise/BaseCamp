version 1.0

task MakeAdjustmentFactorsForNumReadsForAStatBasedOnGCV2 {
  command <<<
    makeAdjustmentFactorsForNumReadsForAStatBasedOnGC_v2
  >>>
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task MakeAdjustmentFactorsForNumReadsForAStatBasedOnGC {
  command <<<
    makeAdjustmentFactorsForNumReadsForAStatBasedOnGC
  >>>
  output {
    File out_stdout = stdout()
  }
}
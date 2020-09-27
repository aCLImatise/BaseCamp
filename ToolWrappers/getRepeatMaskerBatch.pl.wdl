version 1.0

task GetRepeatMaskerBatchpl {
  command <<<
    getRepeatMaskerBatch_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
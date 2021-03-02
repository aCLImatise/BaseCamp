version 1.0

task GetRepeatMaskerBatchpl {
  command <<<
    getRepeatMaskerBatch_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
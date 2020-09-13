version 1.0

task CruxQranker {
  command <<<
    crux q_ranker
  >>>
  output {
    File out_stdout = stdout()
  }
}
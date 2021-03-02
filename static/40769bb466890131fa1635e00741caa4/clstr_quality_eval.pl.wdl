version 1.0

task ClstrQualityEvalpl {
  command <<<
    clstr_quality_eval_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task ClstrQualityEvalByLinkpl {
  command <<<
    clstr_quality_eval_by_link_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
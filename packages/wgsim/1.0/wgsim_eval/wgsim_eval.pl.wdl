version 1.0

task WgsimEvalpl {
  command <<<
    wgsim_eval_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
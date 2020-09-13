version 1.0

task EvaluateSplitspl {
  command <<<
    evaluate_splits_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
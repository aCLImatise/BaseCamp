version 1.0

task Evaluatesvpredictions {
  command <<<
    evaluate_sv_predictions
  >>>
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Evaluatesvpredictions {
  command <<<
    evaluate_sv_predictions
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
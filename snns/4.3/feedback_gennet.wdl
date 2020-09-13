version 1.0

task Feedbackgennet {
  command <<<
    feedback_gennet
  >>>
  output {
    File out_stdout = stdout()
  }
}
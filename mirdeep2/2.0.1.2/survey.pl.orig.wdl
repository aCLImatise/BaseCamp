version 1.0

task Surveyplorig {
  command <<<
    survey_pl_orig
  >>>
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Surveyplorig {
  command <<<
    survey_pl_orig
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task AssessSignificanceR {
  command <<<
    assess_significance_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
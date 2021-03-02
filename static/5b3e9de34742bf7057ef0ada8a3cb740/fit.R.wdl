version 1.0

task FitR {
  command <<<
    fit_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
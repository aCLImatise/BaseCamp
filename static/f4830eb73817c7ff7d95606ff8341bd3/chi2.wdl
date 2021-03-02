version 1.0

task Chi2 {
  command <<<
    chi2
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
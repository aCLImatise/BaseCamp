version 1.0

task Impute2 {
  command <<<
    impute2
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
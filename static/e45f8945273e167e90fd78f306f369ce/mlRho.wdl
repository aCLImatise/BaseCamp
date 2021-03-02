version 1.0

task MlRho {
  command <<<
    mlRho
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
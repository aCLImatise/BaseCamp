version 1.0

task EstLambdaFct {
  command <<<
    EstLambdaFct
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task EstLambdaFct {
  command <<<
    EstLambdaFct
  >>>
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task MlRho {
  command <<<
    mlRho
  >>>
  output {
    File out_stdout = stdout()
  }
}
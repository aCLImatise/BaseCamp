version 1.0

task CPecanEm {
  command <<<
    cPecanEm
  >>>
  output {
    File out_stdout = stdout()
  }
}
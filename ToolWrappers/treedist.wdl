version 1.0

task Treedist {
  command <<<
    treedist
  >>>
  output {
    File out_stdout = stdout()
  }
}
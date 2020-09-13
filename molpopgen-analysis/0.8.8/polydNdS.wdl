version 1.0

task PolydNdS {
  command <<<
    polydNdS
  >>>
  output {
    File out_stdout = stdout()
  }
}
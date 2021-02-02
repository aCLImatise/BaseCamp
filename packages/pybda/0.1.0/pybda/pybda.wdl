version 1.0

task Pybda {
  command <<<
    pybda
  >>>
  output {
    File out_stdout = stdout()
  }
}
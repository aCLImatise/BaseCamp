version 1.0

task DeepMAsED {
  command <<<
    DeepMAsED
  >>>
  output {
    File out_stdout = stdout()
  }
}
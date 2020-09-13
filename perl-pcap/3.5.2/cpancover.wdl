version 1.0

task Cpancover {
  command <<<
    cpancover
  >>>
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task FilterCtgCov {
  command <<<
    FilterCtgCov
  >>>
  output {
    File out_stdout = stdout()
  }
}
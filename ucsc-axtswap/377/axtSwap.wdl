version 1.0

task AxtSwap {
  command <<<
    axtSwap
  >>>
  output {
    File out_stdout = stdout()
  }
}
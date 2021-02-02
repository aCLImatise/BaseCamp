version 1.0

task AxtChain {
  command <<<
    axtChain
  >>>
  output {
    File out_stdout = stdout()
  }
}
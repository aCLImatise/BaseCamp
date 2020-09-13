version 1.0

task ChainAntiRepeat {
  command <<<
    chainAntiRepeat
  >>>
  output {
    File out_stdout = stdout()
  }
}
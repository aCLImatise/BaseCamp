version 1.0

task TrfMask {
  command <<<
    trfMask
  >>>
  output {
    File out_stdout = stdout()
  }
}
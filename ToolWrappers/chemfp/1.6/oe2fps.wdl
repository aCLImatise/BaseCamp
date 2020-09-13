version 1.0

task Oe2fps {
  command <<<
    oe2fps
  >>>
  output {
    File out_stdout = stdout()
  }
}
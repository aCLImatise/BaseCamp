version 1.0

task Stride {
  command <<<
    stride
  >>>
  output {
    File out_stdout = stdout()
  }
}
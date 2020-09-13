version 1.0

task Slicedimage {
  command <<<
    slicedimage
  >>>
  output {
    File out_stdout = stdout()
  }
}
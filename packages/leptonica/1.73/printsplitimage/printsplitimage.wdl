version 1.0

task Printsplitimage {
  command <<<
    printsplitimage
  >>>
  output {
    File out_stdout = stdout()
  }
}
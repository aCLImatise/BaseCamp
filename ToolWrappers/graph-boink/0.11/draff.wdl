version 1.0

task Draff {
  command <<<
    draff
  >>>
  output {
    File out_stdout = stdout()
  }
}
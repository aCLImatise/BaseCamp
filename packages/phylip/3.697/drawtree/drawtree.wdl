version 1.0

task Drawtree {
  command <<<
    drawtree
  >>>
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Inputguif {
  command <<<
    inputgui_f
  >>>
  output {
    File out_stdout = stdout()
  }
}
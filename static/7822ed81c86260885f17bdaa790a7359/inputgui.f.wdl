version 1.0

task Inputguif {
  command <<<
    inputgui_f
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
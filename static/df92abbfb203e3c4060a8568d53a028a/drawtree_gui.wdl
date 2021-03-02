version 1.0

task DrawtreeGui {
  command <<<
    drawtree_gui
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
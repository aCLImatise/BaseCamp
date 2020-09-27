version 1.0

task DrawtreeGui {
  command <<<
    drawtree_gui
  >>>
  output {
    File out_stdout = stdout()
  }
}
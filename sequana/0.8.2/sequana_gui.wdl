version 1.0

task SequanaGui {
  command <<<
    sequana_gui
  >>>
  output {
    File out_stdout = stdout()
  }
}
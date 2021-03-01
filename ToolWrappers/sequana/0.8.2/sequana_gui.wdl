version 1.0

task SequanaGui {
  command <<<
    sequana_gui
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task UiR {
  command <<<
    ui_R
  >>>
  output {
    File out_stdout = stdout()
  }
}
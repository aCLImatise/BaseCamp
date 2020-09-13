version 1.0

task Xgui {
  command <<<
    xgui
  >>>
  output {
    File out_stdout = stdout()
  }
}
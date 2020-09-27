version 1.0

task Obswindow {
  command <<<
    obs_window
  >>>
  output {
    File out_stdout = stdout()
  }
}
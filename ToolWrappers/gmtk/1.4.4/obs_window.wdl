version 1.0

task Obswindow {
  command <<<
    obs_window
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
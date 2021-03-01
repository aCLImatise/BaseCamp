version 1.0

task Xgui {
  command <<<
    xgui
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
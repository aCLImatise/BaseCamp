version 1.0

task UiR {
  command <<<
    ui_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
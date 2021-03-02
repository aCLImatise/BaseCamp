version 1.0

task DrawgramGui {
  command <<<
    drawgram_gui
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
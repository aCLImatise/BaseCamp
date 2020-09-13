version 1.0

task DrawgramGui {
  command <<<
    drawgram_gui
  >>>
  output {
    File out_stdout = stdout()
  }
}
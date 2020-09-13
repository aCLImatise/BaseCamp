version 1.0

task DrawMembrane2 {
  command <<<
    draw_membrane2
  >>>
  output {
    File out_stdout = stdout()
  }
}
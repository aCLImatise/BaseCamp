version 1.0

task Contactguif {
  command <<<
    contactgui_f
  >>>
  output {
    File out_stdout = stdout()
  }
}
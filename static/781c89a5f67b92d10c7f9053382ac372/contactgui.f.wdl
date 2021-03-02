version 1.0

task Contactguif {
  command <<<
    contactgui_f
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
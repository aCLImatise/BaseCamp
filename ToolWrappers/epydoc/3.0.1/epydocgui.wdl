version 1.0

task Epydocgui {
  command <<<
    epydocgui
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
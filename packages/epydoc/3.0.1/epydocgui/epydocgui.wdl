version 1.0

task Epydocgui {
  command <<<
    epydocgui
  >>>
  output {
    File out_stdout = stdout()
  }
}
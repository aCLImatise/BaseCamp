version 1.0

task ItsxTplhtml {
  command <<<
    itsx_tpl_html
  >>>
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task FiltersTplhtml {
  command <<<
    filters_tpl_html
  >>>
  output {
    File out_stdout = stdout()
  }
}
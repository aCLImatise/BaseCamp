version 1.0

task ItsxTplhtml {
  command <<<
    itsx_tpl_html
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
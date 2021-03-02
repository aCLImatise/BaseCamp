version 1.0

task FiltersTplhtml {
  command <<<
    filters_tpl_html
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
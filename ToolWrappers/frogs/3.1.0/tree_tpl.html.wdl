version 1.0

task TreeTplhtml {
  command <<<
    tree_tpl_html
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
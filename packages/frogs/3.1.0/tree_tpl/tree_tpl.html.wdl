version 1.0

task TreeTplhtml {
  command <<<
    tree_tpl_html
  >>>
  output {
    File out_stdout = stdout()
  }
}
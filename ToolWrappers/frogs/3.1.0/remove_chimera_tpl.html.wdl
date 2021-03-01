version 1.0

task RemoveChimeraTplhtml {
  command <<<
    remove_chimera_tpl_html
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
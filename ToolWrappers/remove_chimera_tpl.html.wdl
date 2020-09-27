version 1.0

task RemoveChimeraTplhtml {
  command <<<
    remove_chimera_tpl_html
  >>>
  output {
    File out_stdout = stdout()
  }
}
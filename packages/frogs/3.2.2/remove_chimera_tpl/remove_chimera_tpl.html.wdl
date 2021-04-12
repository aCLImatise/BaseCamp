version 1.0

task RemoveChimeraTplhtml {
  command <<<
    remove_chimera_tpl_html
  >>>
  runtime {
    docker: "quay.io/biocontainers/frogs:3.2.2--py37_0"
  }
  output {
    File out_stdout = stdout()
  }
}
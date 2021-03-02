version 1.0

task ItsxTplhtml {
  command <<<
    itsx_tpl_html
  >>>
  runtime {
    docker: "quay.io/biocontainers/frogs:3.2.0--py37_0"
  }
  output {
    File out_stdout = stdout()
  }
}
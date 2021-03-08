version 1.0

task OtuFiltersTplhtml {
  command <<<
    otu_filters_tpl_html
  >>>
  runtime {
    docker: "quay.io/biocontainers/frogs:3.2.1--py37_0"
  }
  output {
    File out_stdout = stdout()
  }
}
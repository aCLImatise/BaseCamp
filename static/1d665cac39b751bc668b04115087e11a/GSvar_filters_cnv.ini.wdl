version 1.0

task GSvarFiltersCnvini {
  command <<<
    GSvar_filters_cnv_ini
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
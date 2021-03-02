version 1.0

task GSvarFiltersini {
  command <<<
    GSvar_filters_ini
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
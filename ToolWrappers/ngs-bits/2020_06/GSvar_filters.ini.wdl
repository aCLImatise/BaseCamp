version 1.0

task GSvarFiltersini {
  command <<<
    GSvar_filters_ini
  >>>
  output {
    File out_stdout = stdout()
  }
}
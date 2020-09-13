version 1.0

task GSvarFiltersSvini {
  command <<<
    GSvar_filters_sv_ini
  >>>
  output {
    File out_stdout = stdout()
  }
}
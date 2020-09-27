version 1.0

task FilterSvbakpl {
  command <<<
    filter_sv_bak_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
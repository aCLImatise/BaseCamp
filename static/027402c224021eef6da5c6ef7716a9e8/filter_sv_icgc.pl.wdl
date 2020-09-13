version 1.0

task FilterSvIcgcpl {
  command <<<
    filter_sv_icgc_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
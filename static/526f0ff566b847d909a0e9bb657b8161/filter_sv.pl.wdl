version 1.0

task FilterSvpl {
  command <<<
    filter_sv_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
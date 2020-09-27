version 1.0

task FilterSv2pl {
  command <<<
    filter_sv2_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
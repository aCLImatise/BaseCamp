version 1.0

task FilterRtpl {
  command <<<
    filter_rt_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
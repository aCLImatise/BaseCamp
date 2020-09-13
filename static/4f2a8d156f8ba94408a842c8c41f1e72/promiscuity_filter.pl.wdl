version 1.0

task PromiscuityFilterpl {
  command <<<
    promiscuity_filter_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
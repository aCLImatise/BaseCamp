version 1.0

task SwitchBEDOPSbinarytype {
  command <<<
    switch_BEDOPS_binary_type
  >>>
  output {
    File out_stdout = stdout()
  }
}
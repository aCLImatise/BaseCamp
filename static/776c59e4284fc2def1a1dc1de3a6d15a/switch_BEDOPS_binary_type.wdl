version 1.0

task SwitchBEDOPSbinarytype {
  command <<<
    switch_BEDOPS_binary_type
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
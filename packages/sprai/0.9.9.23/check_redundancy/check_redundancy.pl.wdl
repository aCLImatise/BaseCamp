version 1.0

task CheckRedundancypl {
  command <<<
    check_redundancy_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
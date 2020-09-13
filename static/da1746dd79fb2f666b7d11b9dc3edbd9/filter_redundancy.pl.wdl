version 1.0

task FilterRedundancypl {
  command <<<
    filter_redundancy_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task CheckRedundancypl {
  command <<<
    check_redundancy_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
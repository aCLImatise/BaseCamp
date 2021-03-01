version 1.0

task Summationpl {
  command <<<
    summation_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
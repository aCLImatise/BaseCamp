version 1.0

task PromiscuityFilterpl {
  command <<<
    promiscuity_filter_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
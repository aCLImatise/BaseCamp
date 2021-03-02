version 1.0

task FilterRtpl {
  command <<<
    filter_rt_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
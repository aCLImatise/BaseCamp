version 1.0

task IntervalJoinpy {
  command <<<
    interval_join_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task IntervalJoinpy {
  command <<<
    interval_join_py
  >>>
  output {
    File out_stdout = stdout()
  }
}
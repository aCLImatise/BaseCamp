version 1.0

task StatsUtilspy {
  command <<<
    stats_utils_py
  >>>
  output {
    File out_stdout = stdout()
  }
}
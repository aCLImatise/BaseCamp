version 1.0

task StatsUtilspy {
  command <<<
    stats_utils_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
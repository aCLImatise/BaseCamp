version 1.0

task BedCountByIntervalpy {
  command <<<
    bed_count_by_interval_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
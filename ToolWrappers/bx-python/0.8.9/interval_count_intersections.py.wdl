version 1.0

task IntervalCountIntersectionspy {
  command <<<
    interval_count_intersections_py
  >>>
  output {
    File out_stdout = stdout()
  }
}
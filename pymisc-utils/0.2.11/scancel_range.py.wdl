version 1.0

task ScancelRangepy {
  command <<<
    scancel_range_py
  >>>
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task BedCoverageByIntervalpy {
  command <<<
    bed_coverage_by_interval_py
  >>>
  output {
    File out_stdout = stdout()
  }
}
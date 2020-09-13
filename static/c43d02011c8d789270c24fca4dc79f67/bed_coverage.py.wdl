version 1.0

task BedCoveragepy {
  command <<<
    bed_coverage_py
  >>>
  output {
    File out_stdout = stdout()
  }
}
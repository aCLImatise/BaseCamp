version 1.0

task CoverageTable {
  command <<<
    coverage_table
  >>>
  output {
    File out_stdout = stdout()
  }
}
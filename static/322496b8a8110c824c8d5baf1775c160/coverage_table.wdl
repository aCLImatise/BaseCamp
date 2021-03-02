version 1.0

task CoverageTable {
  command <<<
    coverage_table
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task CoverageToRegionspy {
  command <<<
    coverage_to_regions_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
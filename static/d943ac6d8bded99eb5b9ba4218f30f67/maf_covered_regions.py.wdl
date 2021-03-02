version 1.0

task MafCoveredRegionspy {
  command <<<
    maf_covered_regions_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
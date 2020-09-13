version 1.0

task MafCoveredRegionspy {
  command <<<
    maf_covered_regions_py
  >>>
  output {
    File out_stdout = stdout()
  }
}
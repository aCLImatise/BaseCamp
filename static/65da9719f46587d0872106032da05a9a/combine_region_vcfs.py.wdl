version 1.0

task CombineRegionVcfspy {
  command <<<
    combine_region_vcfs_py
  >>>
  output {
    File out_stdout = stdout()
  }
}
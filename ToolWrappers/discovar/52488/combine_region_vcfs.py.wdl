version 1.0

task CombineRegionVcfspy {
  command <<<
    combine_region_vcfs_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
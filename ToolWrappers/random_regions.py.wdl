version 1.0

task RandomRegionspy {
  command <<<
    random_regions_py
  >>>
  output {
    File out_stdout = stdout()
  }
}
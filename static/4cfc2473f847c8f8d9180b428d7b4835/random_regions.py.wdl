version 1.0

task RandomRegionspy {
  command <<<
    random_regions_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
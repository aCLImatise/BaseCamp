version 1.0

task CollateRgRegionspl {
  command <<<
    collate_rg_regions_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
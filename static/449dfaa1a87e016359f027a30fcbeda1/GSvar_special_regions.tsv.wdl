version 1.0

task GSvarSpecialRegionstsv {
  command <<<
    GSvar_special_regions_tsv
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
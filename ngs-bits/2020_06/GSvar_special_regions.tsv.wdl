version 1.0

task GSvarSpecialRegionstsv {
  command <<<
    GSvar_special_regions_tsv
  >>>
  output {
    File out_stdout = stdout()
  }
}
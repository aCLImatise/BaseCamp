version 1.0

task GetPrimarySampy {
  command <<<
    get_primary_sam_py
  >>>
  output {
    File out_stdout = stdout()
  }
}
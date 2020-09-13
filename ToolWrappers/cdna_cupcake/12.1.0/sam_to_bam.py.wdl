version 1.0

task SamToBampy {
  command <<<
    sam_to_bam_py
  >>>
  output {
    File out_stdout = stdout()
  }
}
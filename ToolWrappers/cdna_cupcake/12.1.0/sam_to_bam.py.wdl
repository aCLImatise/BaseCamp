version 1.0

task SamToBampy {
  command <<<
    sam_to_bam_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
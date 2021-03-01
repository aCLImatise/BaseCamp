version 1.0

task BamUmiCount {
  command <<<
    bam_umi_count
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
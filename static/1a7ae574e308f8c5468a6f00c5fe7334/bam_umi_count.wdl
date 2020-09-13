version 1.0

task BamUmiCount {
  command <<<
    bam_umi_count
  >>>
  output {
    File out_stdout = stdout()
  }
}
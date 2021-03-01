version 1.0

task BamUmiCount {
  command <<<
    bam_umi_count
  >>>
  runtime {
    docker: "quay.io/biocontainers/fastq_utils:0.24.1--hfb9b9cc_1"
  }
  output {
    File out_stdout = stdout()
  }
}
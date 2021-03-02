version 1.0

task Fastqqual {
  command <<<
    fastq_qual
  >>>
  runtime {
    docker: "quay.io/biocontainers/fastq-tools:0.8.3--hed695b0_0"
  }
  output {
    File out_stdout = stdout()
  }
}
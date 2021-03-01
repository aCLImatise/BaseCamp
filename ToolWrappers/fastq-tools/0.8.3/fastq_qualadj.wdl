version 1.0

task Fastqqualadj {
  command <<<
    fastq_qualadj
  >>>
  runtime {
    docker: "quay.io/biocontainers/fastq-tools:0.8.3--hed695b0_0"
  }
  output {
    File out_stdout = stdout()
  }
}
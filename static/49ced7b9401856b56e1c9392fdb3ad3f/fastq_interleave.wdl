version 1.0

task Fastqinterleave {
  command <<<
    fastq_interleave
  >>>
  runtime {
    docker: "quay.io/biocontainers/last:1219--h2e03b76_0"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Fastqinterleave {
  command <<<
    fastq_interleave
  >>>
  runtime {
    docker: "quay.io/biocontainers/last:1186--h8b12597_0"
  }
  output {
    File out_stdout = stdout()
  }
}
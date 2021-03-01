version 1.0

task Fastqinterleave {
  command <<<
    fastq_interleave
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
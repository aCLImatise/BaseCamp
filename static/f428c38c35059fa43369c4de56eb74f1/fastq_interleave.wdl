version 1.0

task Fastqinterleave {
  command <<<
    fastq_interleave
  >>>
  output {
    File out_stdout = stdout()
  }
}
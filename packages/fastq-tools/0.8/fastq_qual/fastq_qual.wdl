version 1.0

task Fastqqual {
  command <<<
    fastq_qual
  >>>
  output {
    File out_stdout = stdout()
  }
}
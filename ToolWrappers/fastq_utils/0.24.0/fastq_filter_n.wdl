version 1.0

task FastqFilterN {
  command <<<
    fastq_filter_n
  >>>
  output {
    File out_stdout = stdout()
  }
}
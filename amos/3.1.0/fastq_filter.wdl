version 1.0

task FastqFilter {
  command <<<
    fastq_filter
  >>>
  output {
    File out_stdout = stdout()
  }
}
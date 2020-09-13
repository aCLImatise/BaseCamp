version 1.0

task FastqutilsSort {
  command <<<
    fastq_utils sort
  >>>
  output {
    File out_stdout = stdout()
  }
}
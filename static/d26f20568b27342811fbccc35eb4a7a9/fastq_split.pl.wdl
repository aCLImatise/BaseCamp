version 1.0

task FastqSplitpl {
  command <<<
    fastq_split_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
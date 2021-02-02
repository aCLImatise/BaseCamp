version 1.0

task ShuffleSequencesFastqpl {
  command <<<
    shuffleSequences_fastq_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
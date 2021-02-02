version 1.0

task CreateMergedSequencespl {
  command <<<
    create_merged_sequences_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
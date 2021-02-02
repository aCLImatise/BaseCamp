version 1.0

task MergeSequencesSimplepl {
  command <<<
    merge_sequences_simple_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task GroupSequencespl {
  command <<<
    groupSequences_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
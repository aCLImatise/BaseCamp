version 1.0

task SequenceHelperspl {
  command <<<
    sequence_helpers_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
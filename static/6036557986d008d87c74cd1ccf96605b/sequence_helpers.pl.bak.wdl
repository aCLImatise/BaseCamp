version 1.0

task SequenceHelpersplbak {
  command <<<
    sequence_helpers_pl_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}
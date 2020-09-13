version 1.0

task CentrifugeRemoveEmptySequencepl {
  command <<<
    centrifuge_RemoveEmptySequence_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
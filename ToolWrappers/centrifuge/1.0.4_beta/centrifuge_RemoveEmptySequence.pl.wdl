version 1.0

task CentrifugeRemoveEmptySequencepl {
  command <<<
    centrifuge_RemoveEmptySequence_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
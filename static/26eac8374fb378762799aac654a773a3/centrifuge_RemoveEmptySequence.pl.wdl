version 1.0

task CentrifugeRemoveEmptySequencepl {
  command <<<
    centrifuge_RemoveEmptySequence_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/centrifuge-core:1.0.4_beta--he513fc3_0"
  }
  output {
    File out_stdout = stdout()
  }
}
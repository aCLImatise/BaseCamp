version 1.0

task CrosswordDisabled {
  input {
    String balsa
    String tided
    String sneer
  }
  command <<<
    crossword disabled \
      ~{balsa} \
      ~{tided} \
      ~{sneer}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gecode:6.2.0--hb70a6f5_0"
  }
  parameter_meta {
    balsa: "avail"
    tided: "halve"
    sneer: "Initial"
  }
  output {
    File out_stdout = stdout()
  }
}
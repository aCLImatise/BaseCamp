version 1.0

task SingularityCheck {
  input {
    Boolean lowLow
    Boolean medMed
    Boolean highHigh
    Boolean tagTag
  }
  command <<<
    singularity check \
      ~{true="--low" false="" lowLow} \
      ~{true="--med" false="" medMed} \
      ~{true="--high" false="" highHigh} \
      ~{true="--tag" false="" tagTag}
  >>>
}
version 1.0

task CATSummarise {
  input {
    Boolean iI
    Boolean oO
    Boolean cC
    Boolean forceForce
    Boolean quietQuiet
  }
  command <<<
    CAT summarise \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{true="-c" false="" cC} \
      ~{true="--force" false="" forceForce} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}
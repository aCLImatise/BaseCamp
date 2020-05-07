version 1.0

task BowtieInspect {
  input {
    Boolean largeLargeIndex
    Boolean aA
    Boolean nN
    Boolean sS
    Boolean eE
    Boolean vV
    Boolean helpHelp
  }
  command <<<
    bowtie-inspect \
      ~{true="--large-index" false="" largeLargeIndex} \
      ~{true="-a" false="" aA} \
      ~{true="-n" false="" nN} \
      ~{true="-s" false="" sS} \
      ~{true="-e" false="" eE} \
      ~{true="-v" false="" vV} \
      ~{true="--help" false="" helpHelp}
  >>>
}
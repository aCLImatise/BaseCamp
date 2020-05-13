version 1.0

task Bowtie2Inspect {
  input {
    Boolean largeLargeIndex
    Boolean debugDebug
    Boolean sanitizedSanitized
    Boolean verboseVerbose
    Boolean aA
    Boolean nN
    Boolean sS
    Boolean vV
  }
  command <<<
    bowtie2-inspect \
      ~{true="--large-index" false="" largeLargeIndex} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--sanitized" false="" sanitizedSanitized} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="-a" false="" aA} \
      ~{true="-n" false="" nN} \
      ~{true="-s" false="" sS} \
      ~{true="-v" false="" vV}
  >>>
}
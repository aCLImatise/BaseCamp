version 1.0

task Pathchk {
  input {
    Boolean pP
    Boolean pP
    Boolean portabilityPortability
  }
  command <<<
    pathchk \
      ~{true="-p" false="" pP} \
      ~{true="-P" false="" pP} \
      ~{true="--portability" false="" portabilityPortability}
  >>>
}
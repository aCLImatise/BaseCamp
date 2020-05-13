version 1.0

task CapCdigestfastq {
  input {
    Boolean oO
    Boolean eE
    Boolean pP
    Boolean longLong
  }
  command <<<
    capCdigestfastq \
      ~{true="-o" false="" oO} \
      ~{true="-e" false="" eE} \
      ~{true="-p" false="" pP} \
      ~{true="--long" false="" longLong}
  >>>
}
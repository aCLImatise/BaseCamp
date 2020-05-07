version 1.0

task Igphyml {
  input {
    Boolean uU
    Boolean mM
    Boolean tT
    Boolean omegaOmega
    Boolean fF
    Boolean oO
    Boolean sS
  }
  command <<<
    igphyml \
      ~{true="-u" false="" uU} \
      ~{true="-m" false="" mM} \
      ~{true="-t" false="" tT} \
      ~{true="--omega" false="" omegaOmega} \
      ~{true="-f" false="" fF} \
      ~{true="-o" false="" oO} \
      ~{true="-s" false="" sS}
  >>>
}
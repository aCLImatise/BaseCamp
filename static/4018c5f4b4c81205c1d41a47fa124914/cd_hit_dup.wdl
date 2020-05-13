version 1.0

task CdHitDup {
  input {
    Boolean iI
    Boolean i2I2
    Boolean oO
    Boolean o2O2
    Boolean dD
    Boolean uU
    Boolean mM
    Boolean eE
    Boolean fF
    Boolean sS
    Boolean aA
    Boolean bB
    Boolean pP
  }
  command <<<
    cd-hit-dup \
      ~{true="-i" false="" iI} \
      ~{true="-i2" false="" i2I2} \
      ~{true="-o" false="" oO} \
      ~{true="-o2" false="" o2O2} \
      ~{true="-d" false="" dD} \
      ~{true="-u" false="" uU} \
      ~{true="-m" false="" mM} \
      ~{true="-e" false="" eE} \
      ~{true="-f" false="" fF} \
      ~{true="-s" false="" sS} \
      ~{true="-a" false="" aA} \
      ~{true="-b" false="" bB} \
      ~{true="-p" false="" pP}
  >>>
}
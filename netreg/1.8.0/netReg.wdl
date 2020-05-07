version 1.0

task NetReg {
  input {
    Boolean dD
    Boolean uU
    Boolean rR
    Boolean vV
    Boolean lL
    Boolean sS
    Boolean xX
    Boolean mM
    Boolean tT
    Boolean oO
    Boolean modelModelSelection
    Boolean nN
    Boolean eE
    Boolean bB
  }
  command <<<
    netReg \
      ~{true="-d" false="" dD} \
      ~{true="-u" false="" uU} \
      ~{true="-r" false="" rR} \
      ~{true="-v" false="" vV} \
      ~{true="-l" false="" lL} \
      ~{true="-s" false="" sS} \
      ~{true="-x" false="" xX} \
      ~{true="-m" false="" mM} \
      ~{true="-t" false="" tT} \
      ~{true="-o" false="" oO} \
      ~{true="--modelselection" false="" modelModelSelection} \
      ~{true="-n" false="" nN} \
      ~{true="-e" false="" eE} \
      ~{true="-b" false="" bB}
  >>>
}
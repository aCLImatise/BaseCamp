version 1.0

task PhymlMpi {
  input {
    Boolean dD
    Boolean qQ
    Boolean nN
    Boolean pP
    Boolean bB
    Boolean tTBe
    Boolean mM
    Boolean fF
    Boolean tT
    Boolean vV
    Boolean cC
    Boolean aA
    Boolean sS
    Boolean uU
    Boolean oO
    Boolean quietQuiet
  }
  command <<<
    phyml-mpi \
      ~{true="-d" false="" dD} \
      ~{true="-q" false="" qQ} \
      ~{true="-n" false="" nN} \
      ~{true="-p" false="" pP} \
      ~{true="-b" false="" bB} \
      ~{true="--tbe" false="" tTBe} \
      ~{true="-m" false="" mM} \
      ~{true="-f" false="" fF} \
      ~{true="-t" false="" tT} \
      ~{true="-v" false="" vV} \
      ~{true="-c" false="" cC} \
      ~{true="-a" false="" aA} \
      ~{true="-s" false="" sS} \
      ~{true="-u" false="" uU} \
      ~{true="-o" false="" oO} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}
version 1.0

task DellyCall {
  input {
    Boolean tT
    Boolean gG
    Boolean xX
    Boolean oO
    Boolean qQ
    Boolean rR
    Boolean sS
    Boolean cC
    Boolean mM
    Boolean nN
    Boolean vV
    Boolean uU
    Boolean dD
  }
  command <<<
    delly call \
      ~{true="-t" false="" tT} \
      ~{true="-g" false="" gG} \
      ~{true="-x" false="" xX} \
      ~{true="-o" false="" oO} \
      ~{true="-q" false="" qQ} \
      ~{true="-r" false="" rR} \
      ~{true="-s" false="" sS} \
      ~{true="-c" false="" cC} \
      ~{true="-m" false="" mM} \
      ~{true="-n" false="" nN} \
      ~{true="-v" false="" vV} \
      ~{true="-u" false="" uU} \
      ~{true="-d" false="" dD}
  >>>
}
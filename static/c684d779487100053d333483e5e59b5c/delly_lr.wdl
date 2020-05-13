version 1.0

task DellyLr {
  input {
    Boolean tT
    Boolean yY
    Boolean gG
    Boolean xX
    Boolean oO
    Boolean qQ
    Boolean cC
    Boolean mM
    Boolean nN
    Boolean vV
    Boolean uU
    Boolean dD
  }
  command <<<
    delly lr \
      ~{true="-t" false="" tT} \
      ~{true="-y" false="" yY} \
      ~{true="-g" false="" gG} \
      ~{true="-x" false="" xX} \
      ~{true="-o" false="" oO} \
      ~{true="-q" false="" qQ} \
      ~{true="-c" false="" cC} \
      ~{true="-m" false="" mM} \
      ~{true="-n" false="" nN} \
      ~{true="-v" false="" vV} \
      ~{true="-u" false="" uU} \
      ~{true="-d" false="" dD}
  >>>
}
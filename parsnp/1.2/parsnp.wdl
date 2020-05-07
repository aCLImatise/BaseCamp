version 1.0

task Parsnp {
  input {
    Boolean cC
    Boolean dD
    Boolean rR
    Boolean gG
    Boolean oO
    Boolean qQ
    Boolean uU
    Boolean mM
    Boolean iI
    Boolean aA
    Boolean cC
    Boolean zZ
    Boolean dD
    Boolean eE
    Boolean nN
    Boolean uU
    Boolean xX
    Boolean pP
    Boolean pP
    Boolean vV
    Boolean vV
  }
  command <<<
    parsnp \
      ~{true="-c" false="" cC} \
      ~{true="-d" false="" dD} \
      ~{true="-r" false="" rR} \
      ~{true="-g" false="" gG} \
      ~{true="-o" false="" oO} \
      ~{true="-q" false="" qQ} \
      ~{true="-U" false="" uU} \
      ~{true="-M" false="" mM} \
      ~{true="-i" false="" iI} \
      ~{true="-a" false="" aA} \
      ~{true="-C" false="" cC} \
      ~{true="-z" false="" zZ} \
      ~{true="-D" false="" dD} \
      ~{true="-e" false="" eE} \
      ~{true="-n" false="" nN} \
      ~{true="-u" false="" uU} \
      ~{true="-x" false="" xX} \
      ~{true="-p" false="" pP} \
      ~{true="-P" false="" pP} \
      ~{true="-v" false="" vV} \
      ~{true="-V" false="" vV}
  >>>
}
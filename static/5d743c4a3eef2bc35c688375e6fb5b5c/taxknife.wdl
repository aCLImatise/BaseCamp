version 1.0

task Taxknife {
  input {
    Boolean mM
    Boolean fF
    Boolean kK
    Boolean tT
    Boolean bB
    Boolean rR
    Boolean aA
    Boolean cC
    Boolean sS
    Boolean nN
    Boolean qQ
    Boolean oO
    Boolean iI
    Boolean vV
  }
  command <<<
    taxknife \
      ~{true="-m" false="" mM} \
      ~{true="-f" false="" fF} \
      ~{true="-k" false="" kK} \
      ~{true="-t" false="" tT} \
      ~{true="-b" false="" bB} \
      ~{true="-r" false="" rR} \
      ~{true="-a" false="" aA} \
      ~{true="-c" false="" cC} \
      ~{true="-s" false="" sS} \
      ~{true="-n" false="" nN} \
      ~{true="-q" false="" qQ} \
      ~{true="-o" false="" oO} \
      ~{true="-i" false="" iI} \
      ~{true="-v" false="" vV}
  >>>
}
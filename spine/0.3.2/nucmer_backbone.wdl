version 1.0

task NucmerBackbone.pl {
  input {
    Boolean aA
    Boolean rR
    Boolean gG
    Boolean xX
    Boolean mM
    Boolean bB
    Boolean iI
    Boolean sS
    Boolean oO
    Boolean eE
    Boolean nN
    Boolean tT
    Boolean vV
    Boolean vV
  }
  command <<<
    nucmer_backbone.pl \
      ~{true="-a" false="" aA} \
      ~{true="-r" false="" rR} \
      ~{true="-g" false="" gG} \
      ~{true="-x" false="" xX} \
      ~{true="-m" false="" mM} \
      ~{true="-B" false="" bB} \
      ~{true="-I" false="" iI} \
      ~{true="-s" false="" sS} \
      ~{true="-o" false="" oO} \
      ~{true="-e" false="" eE} \
      ~{true="-n" false="" nN} \
      ~{true="-t" false="" tT} \
      ~{true="-v" false="" vV} \
      ~{true="-V" false="" vV}
  >>>
}
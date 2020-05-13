version 1.0

task BpClassifyHitsKingdom.pl {
  input {
    Boolean tT
    Boolean gG
    Boolean iI
    Boolean eE
    Boolean zZ
    Boolean vV
  }
  command <<<
    bp_classify_hits_kingdom.pl \
      ~{true="-t" false="" tT} \
      ~{true="-g" false="" gG} \
      ~{true="-i" false="" iI} \
      ~{true="-e" false="" eE} \
      ~{true="-z" false="" zZ} \
      ~{true="-v" false="" vV}
  >>>
}
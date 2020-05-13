version 1.0

task BpSearch2alnblocks.pl {
  input {
    Boolean maxMaxEvalue
    Boolean mineMineValue
    Boolean minMinLen
    Boolean maxMaxId
    Boolean miniMiniD
    Boolean iI
    Boolean oO
    Boolean fF
    Boolean ofOf
    Boolean vV
  }
  command <<<
    bp_search2alnblocks.pl \
      ~{true="--maxevalue" false="" maxMaxEvalue} \
      ~{true="--minevalue" false="" mineMineValue} \
      ~{true="--minlen" false="" minMinLen} \
      ~{true="--maxid" false="" maxMaxId} \
      ~{true="--minid" false="" miniMiniD} \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{true="-f" false="" fF} \
      ~{true="-of" false="" ofOf} \
      ~{true="-v" false="" vV}
  >>>
}
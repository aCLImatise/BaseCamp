version 1.0

task ArbReadseq {
  input {
    Boolean aA
    Boolean cC
    Boolean cC
    Boolean deDeGap
    Boolean iI
    Boolean lL
    Boolean oO
    Boolean pP
    Boolean rR
    Boolean vV
    Boolean fF
    Boolean fF
    Boolean widWid
    Boolean tabTab
    Boolean colCol
    Boolean gapGap
    Boolean nameNameRight
    Boolean nameNameTop
    Boolean numNumRight
    Boolean numNumTop
    Boolean matchMatch
    Boolean interInter
  }
  command <<<
    arb_readseq \
      ~{true="-a" false="" aA} \
      ~{true="-c" false="" cC} \
      ~{true="-C" false="" cC} \
      ~{true="-degap" false="" deDeGap} \
      ~{true="-i" false="" iI} \
      ~{true="-l" false="" lL} \
      ~{true="-o" false="" oO} \
      ~{true="-p" false="" pP} \
      ~{true="-r" false="" rR} \
      ~{true="-v" false="" vV} \
      ~{true="-f" false="" fF} \
      ~{true="-f" false="" fF} \
      ~{true="-wid" false="" widWid} \
      ~{true="-tab" false="" tabTab} \
      ~{true="-col" false="" colCol} \
      ~{true="-gap" false="" gapGap} \
      ~{true="-nameright" false="" nameNameRight} \
      ~{true="-nametop" false="" nameNameTop} \
      ~{true="-numright" false="" numNumRight} \
      ~{true="-numtop" false="" numNumTop} \
      ~{true="-match" false="" matchMatch} \
      ~{true="-inter" false="" interInter}
  >>>
}
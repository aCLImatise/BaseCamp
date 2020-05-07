version 1.0

task Readseq {
  input {
    Boolean aA
    Boolean cC
    Boolean cC
    Boolean chCh
    Boolean deDeGap
    Boolean fF
    Boolean fF
    Boolean informInform
    Boolean informInform
    Boolean iI
    Boolean lL
    Boolean oO
    Boolean pP
    Boolean rR
    Boolean tT
    Boolean vV
    Boolean compareCompare
    Boolean aminoAmino
    Boolean featFeat
    Boolean noNoFeat
    String fieldField
    String noNoField
    Boolean extractExtract
    Boolean subrangeSubrange
    Boolean subrangeSubrange
    String subrangeSubrange
    Boolean pairPair
    Boolean unUnPair
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
    Boolean aA
    Boolean cC
    Boolean cC
    Boolean chCh
    Boolean deDeGap
    Boolean fF
    Boolean fF
    Boolean informInform
    Boolean informInform
    Boolean iI
    Boolean lL
    Boolean oO
    Boolean pP
    Boolean rR
    Boolean tT
    Boolean vV
    Boolean compareCompare
    Boolean aminoAmino
    Boolean featFeat
    Boolean noNoFeat
    String fieldField
    String noNoField
    Boolean extractExtract
    Boolean subrangeSubrange
    Boolean subrangeSubrange
    String subrangeSubrange
    Boolean pairPair
    Boolean unUnPair
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
    readseq \
      ~{true="-a" false="" aA} \
      ~{true="-c" false="" cC} \
      ~{true="-C" false="" cC} \
      ~{true="-ch" false="" chCh} \
      ~{true="-degap" false="" deDeGap} \
      ~{true="-f" false="" fF} \
      ~{true="-f" false="" fF} \
      ~{true="-inform" false="" informInform} \
      ~{true="-inform" false="" informInform} \
      ~{true="-i" false="" iI} \
      ~{true="-l" false="" lL} \
      ~{true="-o" false="" oO} \
      ~{true="-p" false="" pP} \
      ~{true="-r" false="" rR} \
      ~{true="-t" false="" tT} \
      ~{true="-v" false="" vV} \
      ~{true="-compare" false="" compareCompare} \
      ~{true="-amino" false="" aminoAmino} \
      ~{true="-feat" false="" featFeat} \
      ~{true="-nofeat" false="" noNoFeat} \
      ~{if defined(fieldField) then ("-field " +  '"' + fieldField + '"') else ""} \
      ~{if defined(noNoField) then ("-nofield " +  '"' + noNoField + '"') else ""} \
      ~{true="-extract" false="" extractExtract} \
      ~{true="-subrange" false="" subrangeSubrange} \
      ~{true="-subrange" false="" subrangeSubrange} \
      ~{if defined(subrangeSubrange) then ("-subrange " +  '"' + subrangeSubrange + '"') else ""} \
      ~{true="-pair" false="" pairPair} \
      ~{true="-unpair" false="" unUnPair} \
      ~{true="-wid" false="" widWid} \
      ~{true="-tab" false="" tabTab} \
      ~{true="-col" false="" colCol} \
      ~{true="-gap" false="" gapGap} \
      ~{true="-nameright" false="" nameNameRight} \
      ~{true="-nametop" false="" nameNameTop} \
      ~{true="-numright" false="" numNumRight} \
      ~{true="-numtop" false="" numNumTop} \
      ~{true="-match" false="" matchMatch} \
      ~{true="-inter" false="" interInter} \
      ~{true="-a" false="" aA} \
      ~{true="-c" false="" cC} \
      ~{true="-C" false="" cC} \
      ~{true="-ch" false="" chCh} \
      ~{true="-degap" false="" deDeGap} \
      ~{true="-f" false="" fF} \
      ~{true="-f" false="" fF} \
      ~{true="-inform" false="" informInform} \
      ~{true="-inform" false="" informInform} \
      ~{true="-i" false="" iI} \
      ~{true="-l" false="" lL} \
      ~{true="-o" false="" oO} \
      ~{true="-p" false="" pP} \
      ~{true="-r" false="" rR} \
      ~{true="-t" false="" tT} \
      ~{true="-v" false="" vV} \
      ~{true="-compare" false="" compareCompare} \
      ~{true="-amino" false="" aminoAmino} \
      ~{true="-feat" false="" featFeat} \
      ~{true="-nofeat" false="" noNoFeat} \
      ~{if defined(fieldField) then ("-field " +  '"' + fieldField + '"') else ""} \
      ~{if defined(noNoField) then ("-nofield " +  '"' + noNoField + '"') else ""} \
      ~{true="-extract" false="" extractExtract} \
      ~{true="-subrange" false="" subrangeSubrange} \
      ~{true="-subrange" false="" subrangeSubrange} \
      ~{if defined(subrangeSubrange) then ("-subrange " +  '"' + subrangeSubrange + '"') else ""} \
      ~{true="-pair" false="" pairPair} \
      ~{true="-unpair" false="" unUnPair} \
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
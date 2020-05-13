version 1.0

task RefEval {
  input {
    String scoresScores
    String weightedWeighted
    Boolean paperPaper
    String aASeqs
    String bBSeqs
    String aAExpr
    String bBExpr
    String aAToB
    String bBToA
    String alignmentAlignmentType
    Boolean strandStrandSpecific
    String readReadLen
    String numNumReads
    String kKMerleN
    String minMinFracIdentity
    String maxMaxFracInDel
    String minMinSegmentLen
    String hashHashTableType
    String hashHashTableNumericType
    String hashHashTableFudgeFactor
    String traceTrace
    String strandStrandSpecific
    Boolean maxMaxFracInDel
    String strandStrandSpecific
    String? bB
    String? aA
    String? bB
    String? aA
    String? bB
    String? aA
    String? bB
    String? bB
    String? aA
    String? bB
    String? aA
    String? bB
    String? aA
    String? bB
    String? aA
    String? bB
    String? gG
    String? whereWhere
  }
  command <<<
    ref-eval \
      ~{bB} \
      ~{bB} \
      ~{bB} \
      ~{bB} \
      ~{bB} \
      ~{bB} \
      ~{bB} \
      ~{bB} \
      ~{bB} \
      ~{gG} \
      ~{whereWhere} \
      ~{if defined(scoresScores) then ("--scores " +  '"' + scoresScores + '"') else ""} \
      ~{if defined(weightedWeighted) then ("--weighted " +  '"' + weightedWeighted + '"') else ""} \
      ~{true="--paper" false="" paperPaper} \
      ~{if defined(aASeqs) then ("--A-seqs " +  '"' + aASeqs + '"') else ""} \
      ~{if defined(bBSeqs) then ("--B-seqs " +  '"' + bBSeqs + '"') else ""} \
      ~{if defined(aAExpr) then ("--A-expr " +  '"' + aAExpr + '"') else ""} \
      ~{if defined(bBExpr) then ("--B-expr " +  '"' + bBExpr + '"') else ""} \
      ~{if defined(aAToB) then ("--A-to-B " +  '"' + aAToB + '"') else ""} \
      ~{if defined(bBToA) then ("--B-to-A " +  '"' + bBToA + '"') else ""} \
      ~{if defined(alignmentAlignmentType) then ("--alignment-type " +  '"' + alignmentAlignmentType + '"') else ""} \
      ~{true="--strand-specific" false="" strandStrandSpecific} \
      ~{if defined(readReadLen) then ("--readlen " +  '"' + readReadLen + '"') else ""} \
      ~{if defined(numNumReads) then ("--num-reads " +  '"' + numNumReads + '"') else ""} \
      ~{if defined(kKMerleN) then ("--kmerlen " +  '"' + kKMerleN + '"') else ""} \
      ~{if defined(minMinFracIdentity) then ("--min-frac-identity " +  '"' + minMinFracIdentity + '"') else ""} \
      ~{if defined(maxMaxFracInDel) then ("--max-frac-indel " +  '"' + maxMaxFracInDel + '"') else ""} \
      ~{if defined(minMinSegmentLen) then ("--min-segment-len " +  '"' + minMinSegmentLen + '"') else ""} \
      ~{if defined(hashHashTableType) then ("--hash-table-type " +  '"' + hashHashTableType + '"') else ""} \
      ~{if defined(hashHashTableNumericType) then ("--hash-table-numeric-type " +  '"' + hashHashTableNumericType + '"') else ""} \
      ~{if defined(hashHashTableFudgeFactor) then ("--hash-table-fudge-factor " +  '"' + hashHashTableFudgeFactor + '"') else ""} \
      ~{if defined(traceTrace) then ("--trace " +  '"' + traceTrace + '"') else ""} \
      ~{if defined(strandStrandSpecific) then ("--strand-specific " +  '"' + strandStrandSpecific + '"') else ""} \
      ~{true="--max-frac-indel" false="" maxMaxFracInDel} \
      ~{if defined(strandStrandSpecific) then ("--strand-specific " +  '"' + strandStrandSpecific + '"') else ""} \
      ~{aA} \
      ~{aA} \
      ~{aA} \
      ~{aA} \
      ~{aA} \
      ~{aA} \
      ~{aA}
  >>>
}
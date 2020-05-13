version 1.0

task Forge {
  input {
    Float pseudoPseudoCount
    Float pseudoPseudoCoding
    Float pseudoPseudoIntron
    Float pseudoPseudoInter
    Boolean minMinCounts
    Boolean lcLcMask
    Int utr5Utr5Length
    Int utr5Utr5Offset
    Int utr3Utr3Length
    Int utr3Utr3Offset
    Int explicitExplicit
    Int minMinIntron
    File boostBoost
    String? annAnn
    String? dnaDna
  }
  command <<<
    forge \
      ~{annAnn} \
      ~{if defined(pseudoPseudoCount) then ("-pseudocount " +  '"' + pseudoPseudoCount + '"') else ""} \
      ~{if defined(pseudoPseudoCoding) then ("-pseudoCoding " +  '"' + pseudoPseudoCoding + '"') else ""} \
      ~{if defined(pseudoPseudoIntron) then ("-pseudoIntron " +  '"' + pseudoPseudoIntron + '"') else ""} \
      ~{if defined(pseudoPseudoInter) then ("-pseudoInter " +  '"' + pseudoPseudoInter + '"') else ""} \
      ~{true="-min-counts" false="" minMinCounts} \
      ~{true="-lcmask" false="" lcLcMask} \
      ~{if defined(utr5Utr5Length) then ("-utr5-length " +  '"' + utr5Utr5Length + '"') else ""} \
      ~{if defined(utr5Utr5Offset) then ("-utr5-offset " +  '"' + utr5Utr5Offset + '"') else ""} \
      ~{if defined(utr3Utr3Length) then ("-utr3-length " +  '"' + utr3Utr3Length + '"') else ""} \
      ~{if defined(utr3Utr3Offset) then ("-utr3-offset " +  '"' + utr3Utr3Offset + '"') else ""} \
      ~{if defined(explicitExplicit) then ("-explicit " +  '"' + explicitExplicit + '"') else ""} \
      ~{if defined(minMinIntron) then ("-min-intron " +  '"' + minMinIntron + '"') else ""} \
      ~{if defined(boostBoost) then ("-boost " +  '"' + boostBoost + '"') else ""} \
      ~{dnaDna}
  >>>
}
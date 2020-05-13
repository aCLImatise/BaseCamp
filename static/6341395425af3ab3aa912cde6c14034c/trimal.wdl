version 1.0

task Trimal {
  input {
    String inIn
    String compareCompareSet
    String forceForceSelect
    String backBackTrans
    Boolean ignoreIgnoreStopCodon
    Boolean splitSplitByStopCodon
    String matrixMatrix
    String outOut
    String htmlHtmlOut
    Boolean keepKeepHeader
    Boolean nbrNbrF
    Boolean megaMega
    Boolean nexusNexus
    Boolean clustalClustal
    Boolean fastFastA
    Boolean fastFastAM10
    Boolean phylipPhylip
    Boolean phylipPhylipM10
    Boolean phylipPhylipPaml
    Boolean phylipPhylipPamlM10
    Boolean phylip3Phylip3
    Boolean phylip3Phylip3
    Boolean complementaryComplementary
    Boolean colColNumbering
    String selectSelectCols
    String selectSelectSeqs
    String gapGapThreshold
    String simSimThreshold
    String conConThreshold
    String consCons
    Boolean nogapsNogaps
    Boolean noNoAllGaps
    Boolean keepKeepSeqs
    Boolean gappGappYouT
    Boolean strictStrict
    Boolean strictStrictPlus
    Boolean automatedAutomated1
    Boolean terminalTerminalOnly
    String blockBlock
    Boolean resResOverlap
    Boolean seqSeqOverlap
    String clustersClusters
    String maxMaxIdentity
    String wW
    String gwGw
    String swSw
    String cwCw
    Boolean sgcSgc
    Boolean sgtSgt
    Boolean sscSsc
    Boolean sstSst
    Boolean sfcSfc
    Boolean sftSft
    Boolean sidentSident
  }
  command <<<
    trimal \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(compareCompareSet) then ("-compareset " +  '"' + compareCompareSet + '"') else ""} \
      ~{if defined(forceForceSelect) then ("-forceselect " +  '"' + forceForceSelect + '"') else ""} \
      ~{if defined(backBackTrans) then ("-backtrans " +  '"' + backBackTrans + '"') else ""} \
      ~{true="-ignorestopcodon" false="" ignoreIgnoreStopCodon} \
      ~{true="-splitbystopcodon" false="" splitSplitByStopCodon} \
      ~{if defined(matrixMatrix) then ("-matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(htmlHtmlOut) then ("-htmlout " +  '"' + htmlHtmlOut + '"') else ""} \
      ~{true="-keepheader" false="" keepKeepHeader} \
      ~{true="-nbrf" false="" nbrNbrF} \
      ~{true="-mega" false="" megaMega} \
      ~{true="-nexus" false="" nexusNexus} \
      ~{true="-clustal" false="" clustalClustal} \
      ~{true="-fasta" false="" fastFastA} \
      ~{true="-fasta_m10" false="" fastFastAM10} \
      ~{true="-phylip" false="" phylipPhylip} \
      ~{true="-phylip_m10" false="" phylipPhylipM10} \
      ~{true="-phylip_paml" false="" phylipPhylipPaml} \
      ~{true="-phylip_paml_m10" false="" phylipPhylipPamlM10} \
      ~{true="-phylip3" false="" phylip3Phylip3} \
      ~{true="-phylip3" false="" phylip3Phylip3} \
      ~{true="-complementary" false="" complementaryComplementary} \
      ~{true="-colnumbering" false="" colColNumbering} \
      ~{if defined(selectSelectCols) then ("-selectcols " +  '"' + selectSelectCols + '"') else ""} \
      ~{if defined(selectSelectSeqs) then ("-selectseqs " +  '"' + selectSelectSeqs + '"') else ""} \
      ~{if defined(gapGapThreshold) then ("-gapthreshold " +  '"' + gapGapThreshold + '"') else ""} \
      ~{if defined(simSimThreshold) then ("-simthreshold " +  '"' + simSimThreshold + '"') else ""} \
      ~{if defined(conConThreshold) then ("-conthreshold " +  '"' + conConThreshold + '"') else ""} \
      ~{if defined(consCons) then ("-cons " +  '"' + consCons + '"') else ""} \
      ~{true="-nogaps" false="" nogapsNogaps} \
      ~{true="-noallgaps" false="" noNoAllGaps} \
      ~{true="-keepseqs" false="" keepKeepSeqs} \
      ~{true="-gappyout" false="" gappGappYouT} \
      ~{true="-strict" false="" strictStrict} \
      ~{true="-strictplus" false="" strictStrictPlus} \
      ~{true="-automated1" false="" automatedAutomated1} \
      ~{true="-terminalonly" false="" terminalTerminalOnly} \
      ~{if defined(blockBlock) then ("-block " +  '"' + blockBlock + '"') else ""} \
      ~{true="-resoverlap" false="" resResOverlap} \
      ~{true="-seqoverlap" false="" seqSeqOverlap} \
      ~{if defined(clustersClusters) then ("-clusters " +  '"' + clustersClusters + '"') else ""} \
      ~{if defined(maxMaxIdentity) then ("-maxidentity " +  '"' + maxMaxIdentity + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(gwGw) then ("-gw " +  '"' + gwGw + '"') else ""} \
      ~{if defined(swSw) then ("-sw " +  '"' + swSw + '"') else ""} \
      ~{if defined(cwCw) then ("-cw " +  '"' + cwCw + '"') else ""} \
      ~{true="-sgc" false="" sgcSgc} \
      ~{true="-sgt" false="" sgtSgt} \
      ~{true="-ssc" false="" sscSsc} \
      ~{true="-sst" false="" sstSst} \
      ~{true="-sfc" false="" sfcSfc} \
      ~{true="-sft" false="" sftSft} \
      ~{true="-sident" false="" sidentSident}
  >>>
}
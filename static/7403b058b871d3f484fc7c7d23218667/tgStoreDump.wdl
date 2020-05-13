version 1.0

task TgStoreDump {
  input {
    String sS
    String tT
    String tigTig
    Boolean unassembledUnassembled
    Boolean contigsContigs
    Boolean repeatsRepeats
    Boolean bubblesBubbles
    Boolean circularCircular
    Int nNReads
    Int lengthLength
    String coverageCoverage
    Boolean statusStatus
    Boolean tigTigS
    Boolean consensusConsensus
    String layoutLayout
    Boolean layoutLayout
    Boolean multiMultiAlign
    Boolean sizesSizes
    Boolean coverageCoverage
    Boolean depthDepth
    Boolean overlapOverlap
    Boolean overlapOverlapHistogram
    String? vV
    String? optsOpts
  }
  command <<<
    tgStoreDump \
      ~{vV} \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{if defined(tigTig) then ("-tig " +  '"' + tigTig + '"') else ""} \
      ~{true="-unassembled" false="" unassembledUnassembled} \
      ~{true="-contigs" false="" contigsContigs} \
      ~{true="-repeats" false="" repeatsRepeats} \
      ~{true="-bubbles" false="" bubblesBubbles} \
      ~{true="-circular" false="" circularCircular} \
      ~{if defined(nNReads) then ("-nreads " +  '"' + nNReads + '"') else ""} \
      ~{if defined(lengthLength) then ("-length " +  '"' + lengthLength + '"') else ""} \
      ~{if defined(coverageCoverage) then ("-coverage " +  '"' + coverageCoverage + '"') else ""} \
      ~{true="-status" false="" statusStatus} \
      ~{true="-tigs" false="" tigTigS} \
      ~{true="-consensus" false="" consensusConsensus} \
      ~{if defined(layoutLayout) then ("-layout " +  '"' + layoutLayout + '"') else ""} \
      ~{true="-layout" false="" layoutLayout} \
      ~{true="-multialign" false="" multiMultiAlign} \
      ~{true="-sizes" false="" sizesSizes} \
      ~{true="-coverage" false="" coverageCoverage} \
      ~{true="-depth" false="" depthDepth} \
      ~{true="-overlap" false="" overlapOverlap} \
      ~{true="-overlaphistogram" false="" overlapOverlapHistogram} \
      ~{optsOpts}
  >>>
}
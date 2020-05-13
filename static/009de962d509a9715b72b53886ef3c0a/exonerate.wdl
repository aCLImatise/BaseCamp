version 1.0

task Exonerate {
  input {
    Boolean queryQueryChunkId
    Boolean targetTargetChunkId
    Boolean queryQueryChunkTotal
    Boolean targetTargetChunkTotal
    Boolean geneticGeneticCode
    Boolean forcesForcesCan
    Boolean saturateSaturateThreshold
    Boolean customCustomServer
    Boolean fastFastASuffix
    Boolean percentPercent
    Boolean showShowAlignment
    Boolean showShowSugar
    Boolean showShowCigar
    Boolean showShowVulgar
    Boolean showShowQueryGff
    Boolean showShowTargetGff
    Boolean ryoRyo
    Boolean refineRefine
    Boolean refineRefineBoundary
    Boolean terminalTerminalRangeInt
    Boolean terminalTerminalRangeExt
    Boolean joinJoinRangeInt
    Boolean joinJoinRangeExt
    Boolean spanSpanRangeInt
    Boolean spanSpanRangeExt
    Boolean singleSinglePass
    Boolean joinJoinFilter
    Boolean softSoftMaskQuery
    Boolean softSoftMaskTarget
    Boolean forceForceFsm
    Boolean wordWordJump
    Boolean wordWordAmbiguity
    Boolean codonCodonGapOpen
    Boolean codonCodonGapExtend
    Boolean minnerMinner
    Boolean maxMaxNer
    Boolean nerNerOpen
    Boolean minMinIntron
    Boolean maxMaxIntron
    Boolean useUseAAtla
    Boolean hspHspFilter
    Boolean useUseWordDropOff
    Boolean seedSeedRepeat
    Boolean dnaDnaWordLen
    Boolean proteinProteinWordLen
    Boolean codonCodonWordLen
    Boolean dnaDnaHspDropOff
    Boolean proteinProteinHspDropOff
    Boolean codonCodonHspDropOff
    Boolean dnaDnaHspThreshold
    Boolean proteinProteinHspThreshold
    Boolean codonCodonHspThreshold
    Boolean dnaDnaWordLimit
    Boolean proteinProteinWordLimit
    Boolean codonCodonWordLimit
    Boolean geneGeneSeed
    Boolean geneGeneSeedRepeat
    Boolean alignmentAlignmentWidth
    Boolean forwardForwardCoordinates
    Boolean qualityQuality
    Boolean spliceSplice3
    Boolean spliceSplice5
    Boolean forceForceGTag
  }
  command <<<
    exonerate \
      ~{true="--querychunkid" false="" queryQueryChunkId} \
      ~{true="--targetchunkid" false="" targetTargetChunkId} \
      ~{true="--querychunktotal" false="" queryQueryChunkTotal} \
      ~{true="--targetchunktotal" false="" targetTargetChunkTotal} \
      ~{true="--geneticcode" false="" geneticGeneticCode} \
      ~{true="--forcescan" false="" forcesForcesCan} \
      ~{true="--saturatethreshold" false="" saturateSaturateThreshold} \
      ~{true="--customserver" false="" customCustomServer} \
      ~{true="--fastasuffix" false="" fastFastASuffix} \
      ~{true="--percent" false="" percentPercent} \
      ~{true="--showalignment" false="" showShowAlignment} \
      ~{true="--showsugar" false="" showShowSugar} \
      ~{true="--showcigar" false="" showShowCigar} \
      ~{true="--showvulgar" false="" showShowVulgar} \
      ~{true="--showquerygff" false="" showShowQueryGff} \
      ~{true="--showtargetgff" false="" showShowTargetGff} \
      ~{true="--ryo" false="" ryoRyo} \
      ~{true="--refine" false="" refineRefine} \
      ~{true="--refineboundary" false="" refineRefineBoundary} \
      ~{true="--terminalrangeint" false="" terminalTerminalRangeInt} \
      ~{true="--terminalrangeext" false="" terminalTerminalRangeExt} \
      ~{true="--joinrangeint" false="" joinJoinRangeInt} \
      ~{true="--joinrangeext" false="" joinJoinRangeExt} \
      ~{true="--spanrangeint" false="" spanSpanRangeInt} \
      ~{true="--spanrangeext" false="" spanSpanRangeExt} \
      ~{true="--singlepass" false="" singleSinglePass} \
      ~{true="--joinfilter" false="" joinJoinFilter} \
      ~{true="--softmaskquery" false="" softSoftMaskQuery} \
      ~{true="--softmasktarget" false="" softSoftMaskTarget} \
      ~{true="--forcefsm" false="" forceForceFsm} \
      ~{true="--wordjump" false="" wordWordJump} \
      ~{true="--wordambiguity" false="" wordWordAmbiguity} \
      ~{true="--codongapopen" false="" codonCodonGapOpen} \
      ~{true="--codongapextend" false="" codonCodonGapExtend} \
      ~{true="--minner" false="" minnerMinner} \
      ~{true="--maxner" false="" maxMaxNer} \
      ~{true="--neropen" false="" nerNerOpen} \
      ~{true="--minintron" false="" minMinIntron} \
      ~{true="--maxintron" false="" maxMaxIntron} \
      ~{true="--useaatla" false="" useUseAAtla} \
      ~{true="--hspfilter" false="" hspHspFilter} \
      ~{true="--useworddropoff" false="" useUseWordDropOff} \
      ~{true="--seedrepeat" false="" seedSeedRepeat} \
      ~{true="--dnawordlen" false="" dnaDnaWordLen} \
      ~{true="--proteinwordlen" false="" proteinProteinWordLen} \
      ~{true="--codonwordlen" false="" codonCodonWordLen} \
      ~{true="--dnahspdropoff" false="" dnaDnaHspDropOff} \
      ~{true="--proteinhspdropoff" false="" proteinProteinHspDropOff} \
      ~{true="--codonhspdropoff" false="" codonCodonHspDropOff} \
      ~{true="--dnahspthreshold" false="" dnaDnaHspThreshold} \
      ~{true="--proteinhspthreshold" false="" proteinProteinHspThreshold} \
      ~{true="--codonhspthreshold" false="" codonCodonHspThreshold} \
      ~{true="--dnawordlimit" false="" dnaDnaWordLimit} \
      ~{true="--proteinwordlimit" false="" proteinProteinWordLimit} \
      ~{true="--codonwordlimit" false="" codonCodonWordLimit} \
      ~{true="--geneseed" false="" geneGeneSeed} \
      ~{true="--geneseedrepeat" false="" geneGeneSeedRepeat} \
      ~{true="--alignmentwidth" false="" alignmentAlignmentWidth} \
      ~{true="--forwardcoordinates" false="" forwardForwardCoordinates} \
      ~{true="--quality" false="" qualityQuality} \
      ~{true="--splice3" false="" spliceSplice3} \
      ~{true="--splice5" false="" spliceSplice5} \
      ~{true="--forcegtag" false="" forceForceGTag}
  >>>
}
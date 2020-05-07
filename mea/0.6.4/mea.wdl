version 1.0

task Mea {
  input {
    String alphaAlpha
    String betaBeta
    String gammaGamma
    String deltaDelta
    Int plotPlotPenalty
    String referenceReference
    String structureStructure
    Boolean noNoSlideRule
    Boolean noNoConflictRule
    Boolean verboseVerbose
    String? ppvPpv
    String? f1F1
    String? mccMcc
  }
  command <<<
    mea \
      ~{ppvPpv} \
      ~{if defined(alphaAlpha) then ("--alpha " +  '"' + alphaAlpha + '"') else ""} \
      ~{if defined(betaBeta) then ("--beta " +  '"' + betaBeta + '"') else ""} \
      ~{if defined(gammaGamma) then ("--gamma " +  '"' + gammaGamma + '"') else ""} \
      ~{if defined(deltaDelta) then ("--delta " +  '"' + deltaDelta + '"') else ""} \
      ~{if defined(plotPlotPenalty) then ("--plot-penalty " +  '"' + plotPlotPenalty + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(structureStructure) then ("--structure " +  '"' + structureStructure + '"') else ""} \
      ~{true="--no-slide-rule" false="" noNoSlideRule} \
      ~{true="--no-conflict-rule" false="" noNoConflictRule} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{f1F1} \
      ~{mccMcc}
  >>>
}
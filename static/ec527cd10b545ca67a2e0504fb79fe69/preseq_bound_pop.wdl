version 1.0

task PreseqBoundPop {
  input {
    Boolean outputOutput
    Boolean maxMaxNumPoints
    Boolean toleranceTolerance
    Boolean bootstrapsBootstraps
    Boolean cCLevel
    Boolean verboseVerbose
    Boolean pePe
    Boolean histHist
    Boolean valsVals
    Boolean bamBam
    Boolean segSegLen
    Boolean quickQuick
    Boolean seedSeed
    Boolean aboutAbout
    String? boundBoundPop
    String? optionsOptions
    String? sortedSortedBedFile
  }
  command <<<
    preseq bound_pop \
      ~{boundBoundPop} \
      ~{true="-output" false="" outputOutput} \
      ~{true="-max_num_points" false="" maxMaxNumPoints} \
      ~{true="-tolerance" false="" toleranceTolerance} \
      ~{true="-bootstraps" false="" bootstrapsBootstraps} \
      ~{true="-clevel" false="" cCLevel} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-pe" false="" pePe} \
      ~{true="-hist" false="" histHist} \
      ~{true="-vals" false="" valsVals} \
      ~{true="-bam" false="" bamBam} \
      ~{true="-seg_len" false="" segSegLen} \
      ~{true="-quick" false="" quickQuick} \
      ~{true="-seed" false="" seedSeed} \
      ~{true="-about" false="" aboutAbout} \
      ~{optionsOptions} \
      ~{sortedSortedBedFile}
  >>>
}
version 1.0

task PreseqLcExtrap {
  input {
    Boolean outputOutput
    Boolean extraExtraP
    Boolean stepStep
    Boolean bootstrapsBootstraps
    Boolean cvalCval
    Boolean termsTerms
    Boolean verboseVerbose
    Boolean bamBam
    Boolean segSegLen
    Boolean pePe
    Boolean valsVals
    Boolean histHist
    Boolean quickQuick
    Boolean defectsDefects
    Boolean seedSeed
    Boolean aboutAbout
    String? lcLcExtraP
    String? optionsOptions
    String? sortedSortedBedFile
  }
  command <<<
    preseq lc_extrap \
      ~{lcLcExtraP} \
      ~{true="-output" false="" outputOutput} \
      ~{true="-extrap" false="" extraExtraP} \
      ~{true="-step" false="" stepStep} \
      ~{true="-bootstraps" false="" bootstrapsBootstraps} \
      ~{true="-cval" false="" cvalCval} \
      ~{true="-terms" false="" termsTerms} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-bam" false="" bamBam} \
      ~{true="-seg_len" false="" segSegLen} \
      ~{true="-pe" false="" pePe} \
      ~{true="-vals" false="" valsVals} \
      ~{true="-hist" false="" histHist} \
      ~{true="-quick" false="" quickQuick} \
      ~{true="-defects" false="" defectsDefects} \
      ~{true="-seed" false="" seedSeed} \
      ~{true="-about" false="" aboutAbout} \
      ~{optionsOptions} \
      ~{sortedSortedBedFile}
  >>>
}
version 1.0

task PreseqCCurve {
  input {
    Boolean outputOutput
    Boolean stepStep
    Boolean verboseVerbose
    Boolean pePe
    Boolean histHist
    Boolean valsVals
    Boolean bamBam
    Boolean segSegLen
    Boolean seedSeed
    Boolean aboutAbout
    String? cCCurve
    String? optionsOptions
    String? sortedSortedBedFile
  }
  command <<<
    preseq c_curve \
      ~{cCCurve} \
      ~{true="-output" false="" outputOutput} \
      ~{true="-step" false="" stepStep} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-pe" false="" pePe} \
      ~{true="-hist" false="" histHist} \
      ~{true="-vals" false="" valsVals} \
      ~{true="-bam" false="" bamBam} \
      ~{true="-seg_len" false="" segSegLen} \
      ~{true="-seed" false="" seedSeed} \
      ~{true="-about" false="" aboutAbout} \
      ~{optionsOptions} \
      ~{sortedSortedBedFile}
  >>>
}
version 1.0

task Rage {
  input {
    Boolean verboseVerbose
    Boolean zipZip
    Boolean getGetBarcodes
    Boolean debugDebug
    String nameName
    String outputOutput
    String nrNrIndividuals
    String lociLoci
    String readReadLength
    String coverageCoverage
    String hrlHrlNumber
    Boolean noNoSingletons
    String diversityDiversity
    String gcGcContent
    String qualityQualityModel
    Boolean singleSingleEnd
    String overlapOverlap
    Boolean multipleMultipleP7Barcodes
    String coverageCoverageModel
    String bbdBbdAlpha
    String bbdBbdBeta
    Int maxMaxPcrCopies
    String hrlHrlMaxCoverage
    String dbrDbr
    String p5P5Overhang
    String p7P7Overhang
    String p5P5RecSite
    String p7P7RecSite
    String barcodesBarcodes
    String probProbHeterozygous
    String probProbIncompleteDigestion
    String rateRateIncompleteDigestion
    String probProbPcrCopy
    String hrlHrlPcrCopies
    String singletonSingletonPcrCopies
    String probProbSeqError
  }
  command <<<
    rage \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--zip" false="" zipZip} \
      ~{true="--get-barcodes" false="" getGetBarcodes} \
      ~{true="--DEBUG" false="" debugDebug} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(nrNrIndividuals) then ("--nr-individuals " +  '"' + nrNrIndividuals + '"') else ""} \
      ~{if defined(lociLoci) then ("--loci " +  '"' + lociLoci + '"') else ""} \
      ~{if defined(readReadLength) then ("--read-length " +  '"' + readReadLength + '"') else ""} \
      ~{if defined(coverageCoverage) then ("--coverage " +  '"' + coverageCoverage + '"') else ""} \
      ~{if defined(hrlHrlNumber) then ("--hrl-number " +  '"' + hrlHrlNumber + '"') else ""} \
      ~{true="--no-singletons" false="" noNoSingletons} \
      ~{if defined(diversityDiversity) then ("--diversity " +  '"' + diversityDiversity + '"') else ""} \
      ~{if defined(gcGcContent) then ("--gc-content " +  '"' + gcGcContent + '"') else ""} \
      ~{if defined(qualityQualityModel) then ("--quality-model " +  '"' + qualityQualityModel + '"') else ""} \
      ~{true="--single-end" false="" singleSingleEnd} \
      ~{if defined(overlapOverlap) then ("--overlap " +  '"' + overlapOverlap + '"') else ""} \
      ~{true="--multiple-p7-barcodes" false="" multipleMultipleP7Barcodes} \
      ~{if defined(coverageCoverageModel) then ("--coverage-model " +  '"' + coverageCoverageModel + '"') else ""} \
      ~{if defined(bbdBbdAlpha) then ("--BBD-alpha " +  '"' + bbdBbdAlpha + '"') else ""} \
      ~{if defined(bbdBbdBeta) then ("--BBD-beta " +  '"' + bbdBbdBeta + '"') else ""} \
      ~{if defined(maxMaxPcrCopies) then ("--max-pcr-copies " +  '"' + maxMaxPcrCopies + '"') else ""} \
      ~{if defined(hrlHrlMaxCoverage) then ("--hrl-max-coverage " +  '"' + hrlHrlMaxCoverage + '"') else ""} \
      ~{if defined(dbrDbr) then ("--dbr " +  '"' + dbrDbr + '"') else ""} \
      ~{if defined(p5P5Overhang) then ("--p5-overhang " +  '"' + p5P5Overhang + '"') else ""} \
      ~{if defined(p7P7Overhang) then ("--p7-overhang " +  '"' + p7P7Overhang + '"') else ""} \
      ~{if defined(p5P5RecSite) then ("--p5-rec-site " +  '"' + p5P5RecSite + '"') else ""} \
      ~{if defined(p7P7RecSite) then ("--p7-rec-site " +  '"' + p7P7RecSite + '"') else ""} \
      ~{if defined(barcodesBarcodes) then ("--barcodes " +  '"' + barcodesBarcodes + '"') else ""} \
      ~{if defined(probProbHeterozygous) then ("--prob-heterozygous " +  '"' + probProbHeterozygous + '"') else ""} \
      ~{if defined(probProbIncompleteDigestion) then ("--prob-incomplete-digestion " +  '"' + probProbIncompleteDigestion + '"') else ""} \
      ~{if defined(rateRateIncompleteDigestion) then ("--rate-incomplete-digestion " +  '"' + rateRateIncompleteDigestion + '"') else ""} \
      ~{if defined(probProbPcrCopy) then ("--prob-pcr-copy " +  '"' + probProbPcrCopy + '"') else ""} \
      ~{if defined(hrlHrlPcrCopies) then ("--hrl-pcr-copies " +  '"' + hrlHrlPcrCopies + '"') else ""} \
      ~{if defined(singletonSingletonPcrCopies) then ("--singleton-pcr-copies " +  '"' + singletonSingletonPcrCopies + '"') else ""} \
      ~{if defined(probProbSeqError) then ("--prob-seq-error " +  '"' + probProbSeqError + '"') else ""}
  >>>
}
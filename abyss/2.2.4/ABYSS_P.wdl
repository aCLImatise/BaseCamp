version 1.0

task ABYSSP {
  input {
    Boolean chastityChastity
    Boolean noNoChastity
    Boolean trimTrimMasked
    Boolean noNoTrimMasked
    String trimTrimQuality
    String maskMaskQuality
    Boolean standardStandardQuality
    Boolean illuminaIlluminaQuality
    Boolean ssSs
    Boolean noNoSs
    File outOut
    String kmKmEr
    String singleSingleKmEr
    String trimTrimLength
    Float coverageCoverage
    String kcKc
    String bubblesBubbles
    Boolean noNoBubbles
    String erodeErode
    String erodeErodeStrand
    File coverageCoverageHist
    Boolean maskMaskCov
    File snpSnp
    Boolean verboseVerbose
    File dbDb
    String libraryLibrary
    String strainStrain
    String speciesSpecies
    File graphGraph
  }
  command <<<
    ABYSS-P \
      ~{true="--chastity" false="" chastityChastity} \
      ~{true="--no-chastity" false="" noNoChastity} \
      ~{true="--trim-masked" false="" trimTrimMasked} \
      ~{true="--no-trim-masked" false="" noNoTrimMasked} \
      ~{if defined(trimTrimQuality) then ("--trim-quality " +  '"' + trimTrimQuality + '"') else ""} \
      ~{if defined(maskMaskQuality) then ("--mask-quality " +  '"' + maskMaskQuality + '"') else ""} \
      ~{true="--standard-quality" false="" standardStandardQuality} \
      ~{true="--illumina-quality" false="" illuminaIlluminaQuality} \
      ~{true="--SS" false="" ssSs} \
      ~{true="--no-SS" false="" noNoSs} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(singleSingleKmEr) then ("--single-kmer " +  '"' + singleSingleKmEr + '"') else ""} \
      ~{if defined(trimTrimLength) then ("--trim-length " +  '"' + trimTrimLength + '"') else ""} \
      ~{if defined(coverageCoverage) then ("--coverage " +  '"' + coverageCoverage + '"') else ""} \
      ~{if defined(kcKc) then ("--kc " +  '"' + kcKc + '"') else ""} \
      ~{if defined(bubblesBubbles) then ("--bubbles " +  '"' + bubblesBubbles + '"') else ""} \
      ~{true="--no-bubbles" false="" noNoBubbles} \
      ~{if defined(erodeErode) then ("--erode " +  '"' + erodeErode + '"') else ""} \
      ~{if defined(erodeErodeStrand) then ("--erode-strand " +  '"' + erodeErodeStrand + '"') else ""} \
      ~{if defined(coverageCoverageHist) then ("--coverage-hist " +  '"' + coverageCoverageHist + '"') else ""} \
      ~{true="--mask-cov" false="" maskMaskCov} \
      ~{if defined(snpSnp) then ("--snp " +  '"' + snpSnp + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(libraryLibrary) then ("--library " +  '"' + libraryLibrary + '"') else ""} \
      ~{if defined(strainStrain) then ("--strain " +  '"' + strainStrain + '"') else ""} \
      ~{if defined(speciesSpecies) then ("--species " +  '"' + speciesSpecies + '"') else ""} \
      ~{if defined(graphGraph) then ("--graph " +  '"' + graphGraph + '"') else ""}
  >>>
}
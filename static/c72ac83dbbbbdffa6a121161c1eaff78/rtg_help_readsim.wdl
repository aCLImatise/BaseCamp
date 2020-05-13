version 1.0

task RtgHelpReadsim {
  input {
    String inputInput
    String machineMachine
    String outputOutput
    Boolean abundanceAbundance
    Boolean allowAllowUnknowns
    Float coverageCoverage
    File distributionDistribution
    Boolean dnaDnaFraction
    Int maxMaxFragmentSize
    Int minMinFragmentSize
    Float nNRate
    Int numNumReads
    File taxonomyTaxonomyDistribution
    Int leftLeftReadLength
    Int rightRightReadLength
    Int readReadLength
    Int ionIonMaxTotalSize
    Int ionIonMinTotalSize
    String commentComment
    Boolean noNoNames
    Boolean noNoQualities
    String qualQualRange
    String samSamRg
    Int seedSeed
  }
  command <<<
    rtg help readsim \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(machineMachine) then ("--machine " +  '"' + machineMachine + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--abundance" false="" abundanceAbundance} \
      ~{true="--allow-unknowns" false="" allowAllowUnknowns} \
      ~{if defined(coverageCoverage) then ("--coverage " +  '"' + coverageCoverage + '"') else ""} \
      ~{if defined(distributionDistribution) then ("--distribution " +  '"' + distributionDistribution + '"') else ""} \
      ~{true="--dna-fraction" false="" dnaDnaFraction} \
      ~{if defined(maxMaxFragmentSize) then ("--max-fragment-size " +  '"' + maxMaxFragmentSize + '"') else ""} \
      ~{if defined(minMinFragmentSize) then ("--min-fragment-size " +  '"' + minMinFragmentSize + '"') else ""} \
      ~{if defined(nNRate) then ("--n-rate " +  '"' + nNRate + '"') else ""} \
      ~{if defined(numNumReads) then ("--num-reads " +  '"' + numNumReads + '"') else ""} \
      ~{if defined(taxonomyTaxonomyDistribution) then ("--taxonomy-distribution " +  '"' + taxonomyTaxonomyDistribution + '"') else ""} \
      ~{if defined(leftLeftReadLength) then ("--left-read-length " +  '"' + leftLeftReadLength + '"') else ""} \
      ~{if defined(rightRightReadLength) then ("--right-read-length " +  '"' + rightRightReadLength + '"') else ""} \
      ~{if defined(readReadLength) then ("--read-length " +  '"' + readReadLength + '"') else ""} \
      ~{if defined(ionIonMaxTotalSize) then ("--ion-max-total-size " +  '"' + ionIonMaxTotalSize + '"') else ""} \
      ~{if defined(ionIonMinTotalSize) then ("--ion-min-total-size " +  '"' + ionIonMinTotalSize + '"') else ""} \
      ~{if defined(commentComment) then ("--comment " +  '"' + commentComment + '"') else ""} \
      ~{true="--no-names" false="" noNoNames} \
      ~{true="--no-qualities" false="" noNoQualities} \
      ~{if defined(qualQualRange) then ("--qual-range " +  '"' + qualQualRange + '"') else ""} \
      ~{if defined(samSamRg) then ("--sam-rg " +  '"' + samSamRg + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""}
  >>>
}
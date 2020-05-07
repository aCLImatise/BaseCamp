version 1.0

task RtgCgsim {
  input {
    String inputInput
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
    Int cgCgReadVersion
    String commentComment
    Boolean noNoNames
    Boolean noNoQualities
    String qualQualRange
    String samSamRg
    Int seedSeed
  }
  command <<<
    rtg cgsim \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
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
      ~{if defined(cgCgReadVersion) then ("--cg-read-version " +  '"' + cgCgReadVersion + '"') else ""} \
      ~{if defined(commentComment) then ("--comment " +  '"' + commentComment + '"') else ""} \
      ~{true="--no-names" false="" noNoNames} \
      ~{true="--no-qualities" false="" noNoQualities} \
      ~{if defined(qualQualRange) then ("--qual-range " +  '"' + qualQualRange + '"') else ""} \
      ~{if defined(samSamRg) then ("--sam-rg " +  '"' + samSamRg + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""}
  >>>
}
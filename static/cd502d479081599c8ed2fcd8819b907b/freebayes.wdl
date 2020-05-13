version 1.0

task Freebayes {
  input {
    Boolean haplotypeHaplotypeLength
    Boolean minMinAlternateFraction
    File samplesSamples
    File populationsPopulations
    File cnvCnvMap
    String variantVariantInput
    Boolean onlyOnlyUseInputAlleles
    String haplotypeHaplotypeBasisAlleles
    Boolean reportReportAllHaplotypeAlleles
    Boolean reportReportMonomorphic
    String pPVar
    Boolean strictStrictVcf
    String thetaTheta
    String ploidyPloidy
    Boolean pooledPooledDiscrete
    Boolean pooledPooledContinuous
    String useUseBestNAlleles
    String maxMaxComplexGap
    String minMinRepeatSize
    String minMinRepeatEntropy
    Boolean noNoPartialObservations
    Boolean throwThrowAwaySnpObs
    Boolean throwThrowAwayIndelsObs
    Boolean throwThrowAwayMnpObs
    String throwThrowAwayComplexObs
    Boolean dontDontLeftAlignIndels
    String minMinAlternateTotal
    String minMinCoverage
    String limitLimitCoverage
    String skipSkipCoverage
    Boolean noNoPopulationPriors
    Boolean hHWePriorsOff
    Boolean binomialBinomialObsPriorsOff
    Boolean alleleAlleleBalancePriorsOff
    File observationObservationBias
    String baseBaseQualityCap
    String probProbContamination
    Boolean legacyLegacyGls
    File contaminationContaminationEstimates
    Boolean debugDebug
    Boolean ddDd
  }
  command <<<
    freebayes \
      ~{true="--haplotype-length" false="" haplotypeHaplotypeLength} \
      ~{true="--min-alternate-fraction" false="" minMinAlternateFraction} \
      ~{if defined(samplesSamples) then ("--samples " +  '"' + samplesSamples + '"') else ""} \
      ~{if defined(populationsPopulations) then ("--populations " +  '"' + populationsPopulations + '"') else ""} \
      ~{if defined(cnvCnvMap) then ("--cnv-map " +  '"' + cnvCnvMap + '"') else ""} \
      ~{if defined(variantVariantInput) then ("--variant-input " +  '"' + variantVariantInput + '"') else ""} \
      ~{true="--only-use-input-alleles" false="" onlyOnlyUseInputAlleles} \
      ~{if defined(haplotypeHaplotypeBasisAlleles) then ("--haplotype-basis-alleles " +  '"' + haplotypeHaplotypeBasisAlleles + '"') else ""} \
      ~{true="--report-all-haplotype-alleles" false="" reportReportAllHaplotypeAlleles} \
      ~{true="--report-monomorphic" false="" reportReportMonomorphic} \
      ~{if defined(pPVar) then ("--pvar " +  '"' + pPVar + '"') else ""} \
      ~{true="--strict-vcf" false="" strictStrictVcf} \
      ~{if defined(thetaTheta) then ("--theta " +  '"' + thetaTheta + '"') else ""} \
      ~{if defined(ploidyPloidy) then ("--ploidy " +  '"' + ploidyPloidy + '"') else ""} \
      ~{true="--pooled-discrete" false="" pooledPooledDiscrete} \
      ~{true="--pooled-continuous" false="" pooledPooledContinuous} \
      ~{if defined(useUseBestNAlleles) then ("--use-best-n-alleles " +  '"' + useUseBestNAlleles + '"') else ""} \
      ~{if defined(maxMaxComplexGap) then ("--max-complex-gap " +  '"' + maxMaxComplexGap + '"') else ""} \
      ~{if defined(minMinRepeatSize) then ("--min-repeat-size " +  '"' + minMinRepeatSize + '"') else ""} \
      ~{if defined(minMinRepeatEntropy) then ("--min-repeat-entropy " +  '"' + minMinRepeatEntropy + '"') else ""} \
      ~{true="--no-partial-observations" false="" noNoPartialObservations} \
      ~{true="--throw-away-snp-obs" false="" throwThrowAwaySnpObs} \
      ~{true="--throw-away-indels-obs" false="" throwThrowAwayIndelsObs} \
      ~{true="--throw-away-mnp-obs" false="" throwThrowAwayMnpObs} \
      ~{if defined(throwThrowAwayComplexObs) then ("--throw-away-complex-obs " +  '"' + throwThrowAwayComplexObs + '"') else ""} \
      ~{true="--dont-left-align-indels" false="" dontDontLeftAlignIndels} \
      ~{if defined(minMinAlternateTotal) then ("--min-alternate-total " +  '"' + minMinAlternateTotal + '"') else ""} \
      ~{if defined(minMinCoverage) then ("--min-coverage " +  '"' + minMinCoverage + '"') else ""} \
      ~{if defined(limitLimitCoverage) then ("--limit-coverage " +  '"' + limitLimitCoverage + '"') else ""} \
      ~{if defined(skipSkipCoverage) then ("--skip-coverage " +  '"' + skipSkipCoverage + '"') else ""} \
      ~{true="--no-population-priors" false="" noNoPopulationPriors} \
      ~{true="--hwe-priors-off" false="" hHWePriorsOff} \
      ~{true="--binomial-obs-priors-off" false="" binomialBinomialObsPriorsOff} \
      ~{true="--allele-balance-priors-off" false="" alleleAlleleBalancePriorsOff} \
      ~{if defined(observationObservationBias) then ("--observation-bias " +  '"' + observationObservationBias + '"') else ""} \
      ~{if defined(baseBaseQualityCap) then ("--base-quality-cap " +  '"' + baseBaseQualityCap + '"') else ""} \
      ~{if defined(probProbContamination) then ("--prob-contamination " +  '"' + probProbContamination + '"') else ""} \
      ~{true="--legacy-gls" false="" legacyLegacyGls} \
      ~{if defined(contaminationContaminationEstimates) then ("--contamination-estimates " +  '"' + contaminationContaminationEstimates + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="-dd" false="" ddDd}
  >>>
}
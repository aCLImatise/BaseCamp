version 1.0

task BayesTyperGenotype {
  input {
    Boolean vV
    Boolean cC
    Boolean sS
    Boolean gG
    Boolean dD
    Boolean oO
    Boolean zZ
    Boolean rR
    Boolean pP
    Boolean yY
    String gibbsGibbsBurnIn
    String gibbsGibbsSamples
    String numberNumberOfGibbsChains
    String kmKmErSubsamplingRate
    String maxMaxHaplotypeVariantKmErs
    Boolean noiseNoiseGenotyping
    String noiseNoiseRatePrior
    String minMinGenotypePosterior
    String minMinNumberOfKmErs
    Boolean disableDisableObservedKmErs
  }
  command <<<
    bayesTyper genotype \
      ~{true="-v" false="" vV} \
      ~{true="-c" false="" cC} \
      ~{true="-s" false="" sS} \
      ~{true="-g" false="" gG} \
      ~{true="-d" false="" dD} \
      ~{true="-o" false="" oO} \
      ~{true="-z" false="" zZ} \
      ~{true="-r" false="" rR} \
      ~{true="-p" false="" pP} \
      ~{true="-y" false="" yY} \
      ~{if defined(gibbsGibbsBurnIn) then ("--gibbs-burn-in " +  '"' + gibbsGibbsBurnIn + '"') else ""} \
      ~{if defined(gibbsGibbsSamples) then ("--gibbs-samples " +  '"' + gibbsGibbsSamples + '"') else ""} \
      ~{if defined(numberNumberOfGibbsChains) then ("--number-of-gibbs-chains " +  '"' + numberNumberOfGibbsChains + '"') else ""} \
      ~{if defined(kmKmErSubsamplingRate) then ("--kmer-subsampling-rate " +  '"' + kmKmErSubsamplingRate + '"') else ""} \
      ~{if defined(maxMaxHaplotypeVariantKmErs) then ("--max-haplotype-variant-kmers " +  '"' + maxMaxHaplotypeVariantKmErs + '"') else ""} \
      ~{true="--noise-genotyping" false="" noiseNoiseGenotyping} \
      ~{if defined(noiseNoiseRatePrior) then ("--noise-rate-prior " +  '"' + noiseNoiseRatePrior + '"') else ""} \
      ~{if defined(minMinGenotypePosterior) then ("--min-genotype-posterior " +  '"' + minMinGenotypePosterior + '"') else ""} \
      ~{if defined(minMinNumberOfKmErs) then ("--min-number-of-kmers " +  '"' + minMinNumberOfKmErs + '"') else ""} \
      ~{true="--disable-observed-kmers" false="" disableDisableObservedKmErs}
  >>>
}
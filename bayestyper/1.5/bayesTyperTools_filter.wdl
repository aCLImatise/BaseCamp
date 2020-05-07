version 1.0

task BayesTyperToolsFilter {
  input {
    Boolean vV
    Boolean oO
    Boolean zZ
    String minMinHomozygoteGenotypes
    String minMinGenotypePosterior
    String minMinNumberOfKmErs
    String kmKmErCoverageFile
  }
  command <<<
    bayesTyperTools filter \
      ~{true="-v" false="" vV} \
      ~{true="-o" false="" oO} \
      ~{true="-z" false="" zZ} \
      ~{if defined(minMinHomozygoteGenotypes) then ("--min-homozygote-genotypes " +  '"' + minMinHomozygoteGenotypes + '"') else ""} \
      ~{if defined(minMinGenotypePosterior) then ("--min-genotype-posterior " +  '"' + minMinGenotypePosterior + '"') else ""} \
      ~{if defined(minMinNumberOfKmErs) then ("--min-number-of-kmers " +  '"' + minMinNumberOfKmErs + '"') else ""} \
      ~{if defined(kmKmErCoverageFile) then ("--kmer-coverage-file " +  '"' + kmKmErCoverageFile + '"') else ""}
  >>>
}
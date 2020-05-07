version 1.0

task IgdiscoverDiscoverjd {
  input {
    String databaseDatabase
    Boolean mergeMerge
    Boolean noNoMerge
    String geneGene
    String jJCoverage
    String alleleAlleleRatio
    String crossCrossMappingRatio
    String minMinCount
    Boolean noNoPerfectMatches
    String dDCoreLength
    String dDCore
    String fastFastA
  }
  command <<<
    igdiscover discoverjd \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{true="--merge" false="" mergeMerge} \
      ~{true="--no-merge" false="" noNoMerge} \
      ~{if defined(geneGene) then ("--gene " +  '"' + geneGene + '"') else ""} \
      ~{if defined(jJCoverage) then ("--j-coverage " +  '"' + jJCoverage + '"') else ""} \
      ~{if defined(alleleAlleleRatio) then ("--allele-ratio " +  '"' + alleleAlleleRatio + '"') else ""} \
      ~{if defined(crossCrossMappingRatio) then ("--cross-mapping-ratio " +  '"' + crossCrossMappingRatio + '"') else ""} \
      ~{if defined(minMinCount) then ("--min-count " +  '"' + minMinCount + '"') else ""} \
      ~{true="--no-perfect-matches" false="" noNoPerfectMatches} \
      ~{if defined(dDCoreLength) then ("--d-core-length " +  '"' + dDCoreLength + '"') else ""} \
      ~{if defined(dDCore) then ("--d-core " +  '"' + dDCore + '"') else ""} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""}
  >>>
}
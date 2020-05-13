version 1.0

task Sequence {
  input {
    Boolean splitSplitN
    Boolean simpleSimple
    Boolean lengthsLengths
    Boolean asAsSequences
    Boolean asAsBases
    Int lengthLength
    String genomeGenome
    Boolean circularCircular
    String genomeGenomeSize
    String coverageCoverage
    String nNReads
    String nNBases
    String distributionDistribution
    Int lengthLength
    String outputOutput
    String basesBases
    String readsReads
    String pairsPairs
    String fractionFraction
    String gcGc
    String atAt
    String aA
    String cC
    String gG
    String tT
    Boolean gcGc
    Boolean aA
    Boolean aA
    Boolean gcGc
  }
  command <<<
    sequence \
      ~{true="-split-n" false="" splitSplitN} \
      ~{true="-simple" false="" simpleSimple} \
      ~{true="-lengths" false="" lengthsLengths} \
      ~{true="-assequences" false="" asAsSequences} \
      ~{true="-asbases" false="" asAsBases} \
      ~{if defined(lengthLength) then ("-length " +  '"' + lengthLength + '"') else ""} \
      ~{if defined(genomeGenome) then ("-genome " +  '"' + genomeGenome + '"') else ""} \
      ~{true="-circular" false="" circularCircular} \
      ~{if defined(genomeGenomeSize) then ("-genomesize " +  '"' + genomeGenomeSize + '"') else ""} \
      ~{if defined(coverageCoverage) then ("-coverage " +  '"' + coverageCoverage + '"') else ""} \
      ~{if defined(nNReads) then ("-nreads " +  '"' + nNReads + '"') else ""} \
      ~{if defined(nNBases) then ("-nbases " +  '"' + nNBases + '"') else ""} \
      ~{if defined(distributionDistribution) then ("-distribution " +  '"' + distributionDistribution + '"') else ""} \
      ~{if defined(lengthLength) then ("-length " +  '"' + lengthLength + '"') else ""} \
      ~{if defined(outputOutput) then ("-output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(basesBases) then ("-bases " +  '"' + basesBases + '"') else ""} \
      ~{if defined(readsReads) then ("-reads " +  '"' + readsReads + '"') else ""} \
      ~{if defined(pairsPairs) then ("-pairs " +  '"' + pairsPairs + '"') else ""} \
      ~{if defined(fractionFraction) then ("-fraction " +  '"' + fractionFraction + '"') else ""} \
      ~{if defined(gcGc) then ("-gc " +  '"' + gcGc + '"') else ""} \
      ~{if defined(atAt) then ("-at " +  '"' + atAt + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="-gc" false="" gcGc} \
      ~{true="-a" false="" aA} \
      ~{true="-a" false="" aA} \
      ~{true="-gc" false="" gcGc}
  >>>
}
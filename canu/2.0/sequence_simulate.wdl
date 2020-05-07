version 1.0

task SequenceSimulate {
  input {
    String genomeGenome
    Boolean circularCircular
    String genomeGenomeSize
    String coverageCoverage
    String nNReads
    String nNBases
    String distributionDistribution
    Int lengthLength
    String outputOutput
  }
  command <<<
    sequence simulate \
      ~{if defined(genomeGenome) then ("-genome " +  '"' + genomeGenome + '"') else ""} \
      ~{true="-circular" false="" circularCircular} \
      ~{if defined(genomeGenomeSize) then ("-genomesize " +  '"' + genomeGenomeSize + '"') else ""} \
      ~{if defined(coverageCoverage) then ("-coverage " +  '"' + coverageCoverage + '"') else ""} \
      ~{if defined(nNReads) then ("-nreads " +  '"' + nNReads + '"') else ""} \
      ~{if defined(nNBases) then ("-nbases " +  '"' + nNBases + '"') else ""} \
      ~{if defined(distributionDistribution) then ("-distribution " +  '"' + distributionDistribution + '"') else ""} \
      ~{if defined(lengthLength) then ("-length " +  '"' + lengthLength + '"') else ""} \
      ~{if defined(outputOutput) then ("-output " +  '"' + outputOutput + '"') else ""}
  >>>
}
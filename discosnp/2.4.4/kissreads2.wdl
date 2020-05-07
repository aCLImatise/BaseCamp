version 1.0

task Kissreads2 {
  input {
    Boolean phasingPhasing
    Boolean xX
    Boolean predictionsPredictions
    Boolean readsReads
    Boolean uncoUnco
    Boolean coCo
    Boolean hammingHamming
    Boolean coverageCoverageFile
    Boolean kK
    Boolean indexIndexStride
    Boolean sizeSizeSeeds
    Boolean outputOutputFastA
    Boolean genotypeGenotype
    Boolean nbNbCores
    Boolean verboseVerbose
    Boolean versionVersion
  }
  command <<<
    kissreads2 \
      ~{true="-phasing" false="" phasingPhasing} \
      ~{true="-x" false="" xX} \
      ~{true="-predictions" false="" predictionsPredictions} \
      ~{true="-reads" false="" readsReads} \
      ~{true="-unco" false="" uncoUnco} \
      ~{true="-co" false="" coCo} \
      ~{true="-hamming" false="" hammingHamming} \
      ~{true="-coverage_file" false="" coverageCoverageFile} \
      ~{true="-k" false="" kK} \
      ~{true="-index_stride" false="" indexIndexStride} \
      ~{true="-size_seeds" false="" sizeSizeSeeds} \
      ~{true="-output_fasta" false="" outputOutputFastA} \
      ~{true="-genotype" false="" genotypeGenotype} \
      ~{true="-nb-cores" false="" nbNbCores} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-version" false="" versionVersion}
  >>>
}
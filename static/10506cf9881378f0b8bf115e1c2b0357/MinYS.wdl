version 1.0

task MinYS.py {
  input {
    Boolean fFOf
    Boolean outOut
    Boolean refRef
    Boolean maskMask
    Boolean miniMiniABin
    Boolean assemblyAssemblyKmErSize
    Boolean assemblyAssemblyAbundanceMin
    Boolean minMinContigSize
    Boolean mtgMtgDir
    Boolean gapGapFillingKmErSize
    Boolean gapGapFillingAbundanceMin
    Boolean maxMaxNodes
    Boolean maxMaxLength
    Boolean lL
    Boolean contigsContigs
    Boolean graphGraph
    Boolean nbNbCores
  }
  command <<<
    MinYS.py \
      ~{true="-fof" false="" fFOf} \
      ~{true="-out" false="" outOut} \
      ~{true="-ref" false="" refRef} \
      ~{true="-mask" false="" maskMask} \
      ~{true="-minia-bin" false="" miniMiniABin} \
      ~{true="-assembly-kmer-size" false="" assemblyAssemblyKmErSize} \
      ~{true="-assembly-abundance-min" false="" assemblyAssemblyAbundanceMin} \
      ~{true="-min-contig-size" false="" minMinContigSize} \
      ~{true="-mtg-dir" false="" mtgMtgDir} \
      ~{true="-gapfilling-kmer-size" false="" gapGapFillingKmErSize} \
      ~{true="-gapfilling-abundance-min" false="" gapGapFillingAbundanceMin} \
      ~{true="-max-nodes" false="" maxMaxNodes} \
      ~{true="-max-length" false="" maxMaxLength} \
      ~{true="-l" false="" lL} \
      ~{true="-contigs" false="" contigsContigs} \
      ~{true="-graph" false="" graphGraph} \
      ~{true="-nb-cores" false="" nbNbCores}
  >>>
}
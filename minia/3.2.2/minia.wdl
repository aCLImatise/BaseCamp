version 1.0

task Minia {
  input {
    Boolean inIn
    Boolean keepKeepIsolated
    Boolean traversalTraversal
    Boolean fastFastALine
    Boolean noNoBulgeRemoval
    Boolean noNoTipRemoval
    Boolean noNoEcRemoval
    Boolean tipTipLenTopoKMult
    Boolean tipTipLenRctcKMult
    Boolean tipTipRctcCutOff
    Boolean bulgeBulgeLenKMult
    Boolean bulgeBulgeLenKAdd
    Boolean bulgeBulgeAltPathKAdd
    Boolean bulgeBulgeAltPathCovMult
    Boolean ecEcLenKMult
    Boolean ecEcRctcCutOff
    Boolean noNoMphF
    Boolean kmKmErSize
    Boolean abundanceAbundanceMin
    Boolean abundanceAbundanceMax
    Boolean abundanceAbundanceMinThreshold
    Boolean histoHistoMax
    Boolean soliditySolidityKind
    Boolean soliditySolidityCustom
    Boolean maxMaxMemory
    Boolean maxMaxDisk
    Boolean solidSolidKmErsOut
    Boolean outOut
    Boolean outOutDir
    Boolean outOutTmp
    Boolean outOutCompress
    Boolean storageStorageType
    Boolean histo2dHisto2d
    Boolean histoHisto
    Boolean minimizerMinimizerType
    Boolean minimizerMinimizerSize
    Boolean repartitionRepartitionType
    Boolean bloomBloom
    Boolean deDeBloom
    Boolean deDeBloomImpl
    Boolean branchingBranchingNodes
    Boolean topologyTopologyStats
    Boolean configConfigOnly
    Boolean nbNbCores
    Boolean allAllAbundanceCounts
    Boolean edgeEdgeKm
    Boolean verboseVerbose
    Boolean integerIntegerPrecision
    Boolean redoRedoBCalm
    Boolean skipSkipBCalm
    Boolean redoRedoBGlue
    Boolean skipSkipBGlue
    Boolean redoRedoLinks
    Boolean skipSkipLinks
    Boolean nbNbGluePartitions
  }
  command <<<
    minia \
      ~{true="-in" false="" inIn} \
      ~{true="-keep-isolated" false="" keepKeepIsolated} \
      ~{true="-traversal" false="" traversalTraversal} \
      ~{true="-fasta-line" false="" fastFastALine} \
      ~{true="-no-bulge-removal" false="" noNoBulgeRemoval} \
      ~{true="-no-tip-removal" false="" noNoTipRemoval} \
      ~{true="-no-ec-removal" false="" noNoEcRemoval} \
      ~{true="-tip-len-topo-kmult" false="" tipTipLenTopoKMult} \
      ~{true="-tip-len-rctc-kmult" false="" tipTipLenRctcKMult} \
      ~{true="-tip-rctc-cutoff" false="" tipTipRctcCutOff} \
      ~{true="-bulge-len-kmult" false="" bulgeBulgeLenKMult} \
      ~{true="-bulge-len-kadd" false="" bulgeBulgeLenKAdd} \
      ~{true="-bulge-altpath-kadd" false="" bulgeBulgeAltPathKAdd} \
      ~{true="-bulge-altpath-covmult" false="" bulgeBulgeAltPathCovMult} \
      ~{true="-ec-len-kmult" false="" ecEcLenKMult} \
      ~{true="-ec-rctc-cutoff" false="" ecEcRctcCutOff} \
      ~{true="-no-mphf" false="" noNoMphF} \
      ~{true="-kmer-size" false="" kmKmErSize} \
      ~{true="-abundance-min" false="" abundanceAbundanceMin} \
      ~{true="-abundance-max" false="" abundanceAbundanceMax} \
      ~{true="-abundance-min-threshold" false="" abundanceAbundanceMinThreshold} \
      ~{true="-histo-max" false="" histoHistoMax} \
      ~{true="-solidity-kind" false="" soliditySolidityKind} \
      ~{true="-solidity-custom" false="" soliditySolidityCustom} \
      ~{true="-max-memory" false="" maxMaxMemory} \
      ~{true="-max-disk" false="" maxMaxDisk} \
      ~{true="-solid-kmers-out" false="" solidSolidKmErsOut} \
      ~{true="-out" false="" outOut} \
      ~{true="-out-dir" false="" outOutDir} \
      ~{true="-out-tmp" false="" outOutTmp} \
      ~{true="-out-compress" false="" outOutCompress} \
      ~{true="-storage-type" false="" storageStorageType} \
      ~{true="-histo2D" false="" histo2dHisto2d} \
      ~{true="-histo" false="" histoHisto} \
      ~{true="-minimizer-type" false="" minimizerMinimizerType} \
      ~{true="-minimizer-size" false="" minimizerMinimizerSize} \
      ~{true="-repartition-type" false="" repartitionRepartitionType} \
      ~{true="-bloom" false="" bloomBloom} \
      ~{true="-debloom" false="" deDeBloom} \
      ~{true="-debloom-impl" false="" deDeBloomImpl} \
      ~{true="-branching-nodes" false="" branchingBranchingNodes} \
      ~{true="-topology-stats" false="" topologyTopologyStats} \
      ~{true="-config-only" false="" configConfigOnly} \
      ~{true="-nb-cores" false="" nbNbCores} \
      ~{true="-all-abundance-counts" false="" allAllAbundanceCounts} \
      ~{true="-edge-km" false="" edgeEdgeKm} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-integer-precision" false="" integerIntegerPrecision} \
      ~{true="-redo-bcalm" false="" redoRedoBCalm} \
      ~{true="-skip-bcalm" false="" skipSkipBCalm} \
      ~{true="-redo-bglue" false="" redoRedoBGlue} \
      ~{true="-skip-bglue" false="" skipSkipBGlue} \
      ~{true="-redo-links" false="" redoRedoLinks} \
      ~{true="-skip-links" false="" skipSkipLinks} \
      ~{true="-nb-glue-partitions" false="" nbNbGluePartitions}
  >>>
}
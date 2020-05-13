version 1.0

task Ray {
  input {
    String deDe
    String deDe
    String deDe
    String quantificationQuantification
    String quantificationQuantification
    String quantificationQuantification
    String taxonomyTaxonomy
    String geneGene
    String compareCompare
    Boolean versionVersion
    String oO
    Boolean disableDisableRecycling
    Boolean debugDebugRecycling
    Boolean ignoreIgnoreSeeds
    Boolean mergeMergeSeeds
    Boolean disableDisableScaffoldEr
    Int minimumMinimumSeedLength
    Int minimumMinimumContigLength
    Boolean colorColorSpace
    Int useUseMaximumSeedCoverage
    Int useUseMinimumSeedCoverage
    String bloomBloomFilterBits
    String hashHashTableBuckets
    String hashHashTableBucketsPerGroup
    String hashHashTableLoadFactorThreshold
    Boolean hashHashTableVerbosity
    String searchSearch
    Boolean oneOneColorPerFile
    Boolean enableEnableNeighbourhoods
    Boolean amosAmos
    Boolean writeWriteKmErs
    Boolean graphGraphOnly
    Boolean writeWriteReadMarkers
    Boolean writeWriteSeeds
    Boolean writeWriteExtensions
    Boolean writeWriteContigPaths
    Boolean writeWriteMarkerSummary
    Boolean showShowMemoryUsage
    Boolean showShowMemoryAllocations
    String writeWriteCheckpoints
    String readReadCheckpoints
    String readReadWriteCheckpoints
    Boolean routeRouteMessages
    String connectionConnectionType
    String routingRoutingGraphDegree
    Boolean mpiexecMpiexec
    String thisThis
    Directory theThe
    Boolean manualManual
    String mailingMailing
    String? debuggingDebugging
    String? amosAmos
    String? communicationCommunication
  }
  command <<<
    Ray \
      ~{debuggingDebugging} \
      ~{amosAmos} \
      ~{if defined(deDe) then ("- de " +  '"' + deDe + '"') else ""} \
      ~{if defined(deDe) then ("- de " +  '"' + deDe + '"') else ""} \
      ~{if defined(deDe) then ("- de " +  '"' + deDe + '"') else ""} \
      ~{if defined(quantificationQuantification) then ("- quantification " +  '"' + quantificationQuantification + '"') else ""} \
      ~{if defined(quantificationQuantification) then ("- quantification " +  '"' + quantificationQuantification + '"') else ""} \
      ~{if defined(quantificationQuantification) then ("- quantification " +  '"' + quantificationQuantification + '"') else ""} \
      ~{if defined(taxonomyTaxonomy) then ("- taxonomy " +  '"' + taxonomyTaxonomy + '"') else ""} \
      ~{if defined(geneGene) then ("- gene " +  '"' + geneGene + '"') else ""} \
      ~{if defined(compareCompare) then ("- compare " +  '"' + compareCompare + '"') else ""} \
      ~{true="-version" false="" versionVersion} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-disable-recycling" false="" disableDisableRecycling} \
      ~{true="-debug-recycling" false="" debugDebugRecycling} \
      ~{true="-ignore-seeds" false="" ignoreIgnoreSeeds} \
      ~{true="-merge-seeds" false="" mergeMergeSeeds} \
      ~{true="-disable-scaffolder" false="" disableDisableScaffoldEr} \
      ~{if defined(minimumMinimumSeedLength) then ("-minimum-seed-length " +  '"' + minimumMinimumSeedLength + '"') else ""} \
      ~{if defined(minimumMinimumContigLength) then ("-minimum-contig-length " +  '"' + minimumMinimumContigLength + '"') else ""} \
      ~{true="-color-space" false="" colorColorSpace} \
      ~{if defined(useUseMaximumSeedCoverage) then ("-use-maximum-seed-coverage " +  '"' + useUseMaximumSeedCoverage + '"') else ""} \
      ~{if defined(useUseMinimumSeedCoverage) then ("-use-minimum-seed-coverage " +  '"' + useUseMinimumSeedCoverage + '"') else ""} \
      ~{if defined(bloomBloomFilterBits) then ("-bloom-filter-bits " +  '"' + bloomBloomFilterBits + '"') else ""} \
      ~{if defined(hashHashTableBuckets) then ("-hash-table-buckets " +  '"' + hashHashTableBuckets + '"') else ""} \
      ~{if defined(hashHashTableBucketsPerGroup) then ("-hash-table-buckets-per-group " +  '"' + hashHashTableBucketsPerGroup + '"') else ""} \
      ~{if defined(hashHashTableLoadFactorThreshold) then ("-hash-table-load-factor-threshold " +  '"' + hashHashTableLoadFactorThreshold + '"') else ""} \
      ~{true="-hash-table-verbosity" false="" hashHashTableVerbosity} \
      ~{if defined(searchSearch) then ("-search " +  '"' + searchSearch + '"') else ""} \
      ~{true="-one-color-per-file" false="" oneOneColorPerFile} \
      ~{true="-enable-neighbourhoods" false="" enableEnableNeighbourhoods} \
      ~{true="-amos" false="" amosAmos} \
      ~{true="-write-kmers" false="" writeWriteKmErs} \
      ~{true="-graph-only" false="" graphGraphOnly} \
      ~{true="-write-read-markers" false="" writeWriteReadMarkers} \
      ~{true="-write-seeds" false="" writeWriteSeeds} \
      ~{true="-write-extensions" false="" writeWriteExtensions} \
      ~{true="-write-contig-paths" false="" writeWriteContigPaths} \
      ~{true="-write-marker-summary" false="" writeWriteMarkerSummary} \
      ~{true="-show-memory-usage" false="" showShowMemoryUsage} \
      ~{true="-show-memory-allocations" false="" showShowMemoryAllocations} \
      ~{if defined(writeWriteCheckpoints) then ("-write-checkpoints " +  '"' + writeWriteCheckpoints + '"') else ""} \
      ~{if defined(readReadCheckpoints) then ("-read-checkpoints " +  '"' + readReadCheckpoints + '"') else ""} \
      ~{if defined(readReadWriteCheckpoints) then ("-read-write-checkpoints " +  '"' + readReadWriteCheckpoints + '"') else ""} \
      ~{true="-route-messages" false="" routeRouteMessages} \
      ~{if defined(connectionConnectionType) then ("-connection-type " +  '"' + connectionConnectionType + '"') else ""} \
      ~{if defined(routingRoutingGraphDegree) then ("-routing-graph-degree " +  '"' + routingRoutingGraphDegree + '"') else ""} \
      ~{true="- mpiexec" false="" mpiexecMpiexec} \
      ~{if defined(thisThis) then ("- This " +  '"' + thisThis + '"') else ""} \
      ~{if defined(theThe) then ("- The " +  '"' + theThe + '"') else ""} \
      ~{true="- Manual" false="" manualManual} \
      ~{if defined(mailingMailing) then ("- Mailing " +  '"' + mailingMailing + '"') else ""} \
      ~{communicationCommunication}
  >>>
}
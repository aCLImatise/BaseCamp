version 1.0

task AnviSplit {
  input {
    String panPanOrProfileDb
    String contigsContigsDb
    String genomesGenomesStorage
    Boolean skipSkipVariabilityTables
    Boolean compressCompressAuxiliaryData
    String collectionCollectionName
    String binBinId
    String outputOutputDir
    Boolean listListCollections
    Boolean skipSkipHierarchicalClustering
    Boolean enforceEnforceHierarchicalClustering
    String distanceDistance
    String linkageLinkage
  }
  command <<<
    anvi-split \
      ~{if defined(panPanOrProfileDb) then ("--pan-or-profile-db " +  '"' + panPanOrProfileDb + '"') else ""} \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(genomesGenomesStorage) then ("--genomes-storage " +  '"' + genomesGenomesStorage + '"') else ""} \
      ~{true="--skip-variability-tables" false="" skipSkipVariabilityTables} \
      ~{true="--compress-auxiliary-data" false="" compressCompressAuxiliaryData} \
      ~{if defined(collectionCollectionName) then ("--collection-name " +  '"' + collectionCollectionName + '"') else ""} \
      ~{if defined(binBinId) then ("--bin-id " +  '"' + binBinId + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{true="--list-collections" false="" listListCollections} \
      ~{true="--skip-hierarchical-clustering" false="" skipSkipHierarchicalClustering} \
      ~{true="--enforce-hierarchical-clustering" false="" enforceEnforceHierarchicalClustering} \
      ~{if defined(distanceDistance) then ("--distance " +  '"' + distanceDistance + '"') else ""} \
      ~{if defined(linkageLinkage) then ("--linkage " +  '"' + linkageLinkage + '"') else ""}
  >>>
}
version 1.0

task AnviComputeGeneClusterHomogeneity {
  input {
    String panPanDb
    String genomesGenomesStorage
    File outputOutputFile
    Boolean storeStoreInDb
    String geneGeneClusterId
    File geneGeneClusterIdsFile
    String collectionCollectionName
    String binBinId
    Boolean quickQuickHomogeneity
    String numNumThreads
    Boolean justJustDoIt
  }
  command <<<
    anvi-compute-gene-cluster-homogeneity \
      ~{if defined(panPanDb) then ("--pan-db " +  '"' + panPanDb + '"') else ""} \
      ~{if defined(genomesGenomesStorage) then ("--genomes-storage " +  '"' + genomesGenomesStorage + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{true="--store-in-db" false="" storeStoreInDb} \
      ~{if defined(geneGeneClusterId) then ("--gene-cluster-id " +  '"' + geneGeneClusterId + '"') else ""} \
      ~{if defined(geneGeneClusterIdsFile) then ("--gene-cluster-ids-file " +  '"' + geneGeneClusterIdsFile + '"') else ""} \
      ~{if defined(collectionCollectionName) then ("--collection-name " +  '"' + collectionCollectionName + '"') else ""} \
      ~{if defined(binBinId) then ("--bin-id " +  '"' + binBinId + '"') else ""} \
      ~{true="--quick-homogeneity" false="" quickQuickHomogeneity} \
      ~{if defined(numNumThreads) then ("--num-threads " +  '"' + numNumThreads + '"') else ""} \
      ~{true="--just-do-it" false="" justJustDoIt}
  >>>
}
version 1.0

task AnviGetSequencesForGeneClusters {
  input {
    String panPanDb
    String genomesGenomesStorage
    String outputOutputFile
    Boolean reportReportDnaSequences
    String geneGeneClusterId
    File geneGeneClusterIdsFile
    String collectionCollectionName
    String binBinId
    Int minMinNumGenomesGeneClusterOccurs
    Int maxMaxNumGenomesGeneClusterOccurs
    Int minMinNumGenesFromEachGenome
    Int maxMaxNumGenesFromEachGenome
    Int maxMaxNumGeneClustersMissingFromGenome
    Float minMinFunctionalHomogeneityIndex
    Float maxMaxFunctionalHomogeneityIndex
    Float minMinGeometricHomogeneityIndex
    Float maxMaxGeometricHomogeneityIndex
    Float minMinCombinedHomogeneityIndex
    Float maxMaxCombinedHomogeneityIndex
    String addAddIntoItemsAdditionalDataTable
    Boolean listListCollections
    Boolean listListBins
    Boolean concatenateConcatenateGeneClusters
    File partitionPartitionFile
    String separatorSeparator
    String alignAlignWith
    Boolean listListAligners
    Boolean justJustDoIt
    Boolean dryDryRun
  }
  command <<<
    anvi-get-sequences-for-gene-clusters \
      ~{if defined(panPanDb) then ("--pan-db " +  '"' + panPanDb + '"') else ""} \
      ~{if defined(genomesGenomesStorage) then ("--genomes-storage " +  '"' + genomesGenomesStorage + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{true="--report-DNA-sequences" false="" reportReportDnaSequences} \
      ~{if defined(geneGeneClusterId) then ("--gene-cluster-id " +  '"' + geneGeneClusterId + '"') else ""} \
      ~{if defined(geneGeneClusterIdsFile) then ("--gene-cluster-ids-file " +  '"' + geneGeneClusterIdsFile + '"') else ""} \
      ~{if defined(collectionCollectionName) then ("--collection-name " +  '"' + collectionCollectionName + '"') else ""} \
      ~{if defined(binBinId) then ("--bin-id " +  '"' + binBinId + '"') else ""} \
      ~{if defined(minMinNumGenomesGeneClusterOccurs) then ("--min-num-genomes-gene-cluster-occurs " +  '"' + minMinNumGenomesGeneClusterOccurs + '"') else ""} \
      ~{if defined(maxMaxNumGenomesGeneClusterOccurs) then ("--max-num-genomes-gene-cluster-occurs " +  '"' + maxMaxNumGenomesGeneClusterOccurs + '"') else ""} \
      ~{if defined(minMinNumGenesFromEachGenome) then ("--min-num-genes-from-each-genome " +  '"' + minMinNumGenesFromEachGenome + '"') else ""} \
      ~{if defined(maxMaxNumGenesFromEachGenome) then ("--max-num-genes-from-each-genome " +  '"' + maxMaxNumGenesFromEachGenome + '"') else ""} \
      ~{if defined(maxMaxNumGeneClustersMissingFromGenome) then ("--max-num-gene-clusters-missing-from-genome " +  '"' + maxMaxNumGeneClustersMissingFromGenome + '"') else ""} \
      ~{if defined(minMinFunctionalHomogeneityIndex) then ("--min-functional-homogeneity-index " +  '"' + minMinFunctionalHomogeneityIndex + '"') else ""} \
      ~{if defined(maxMaxFunctionalHomogeneityIndex) then ("--max-functional-homogeneity-index " +  '"' + maxMaxFunctionalHomogeneityIndex + '"') else ""} \
      ~{if defined(minMinGeometricHomogeneityIndex) then ("--min-geometric-homogeneity-index " +  '"' + minMinGeometricHomogeneityIndex + '"') else ""} \
      ~{if defined(maxMaxGeometricHomogeneityIndex) then ("--max-geometric-homogeneity-index " +  '"' + maxMaxGeometricHomogeneityIndex + '"') else ""} \
      ~{if defined(minMinCombinedHomogeneityIndex) then ("--min-combined-homogeneity-index " +  '"' + minMinCombinedHomogeneityIndex + '"') else ""} \
      ~{if defined(maxMaxCombinedHomogeneityIndex) then ("--max-combined-homogeneity-index " +  '"' + maxMaxCombinedHomogeneityIndex + '"') else ""} \
      ~{if defined(addAddIntoItemsAdditionalDataTable) then ("--add-into-items-additional-data-table " +  '"' + addAddIntoItemsAdditionalDataTable + '"') else ""} \
      ~{true="--list-collections" false="" listListCollections} \
      ~{true="--list-bins" false="" listListBins} \
      ~{true="--concatenate-gene-clusters" false="" concatenateConcatenateGeneClusters} \
      ~{if defined(partitionPartitionFile) then ("--partition-file " +  '"' + partitionPartitionFile + '"') else ""} \
      ~{if defined(separatorSeparator) then ("--separator " +  '"' + separatorSeparator + '"') else ""} \
      ~{if defined(alignAlignWith) then ("--align-with " +  '"' + alignAlignWith + '"') else ""} \
      ~{true="--list-aligners" false="" listListAligners} \
      ~{true="--just-do-it" false="" justJustDoIt} \
      ~{true="--dry-run" false="" dryDryRun}
  >>>
}
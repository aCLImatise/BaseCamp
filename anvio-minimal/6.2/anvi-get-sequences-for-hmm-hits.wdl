version 1.0

task AnviGetSequencesForHmmHits {
  input {
    String contigsContigsDb
    String profileProfileDb
    String collectionCollectionName
    String binBinId
    File binBinIdsFile
    File externalExternalGenomes
    File internalInternalGenomes
    String hmmHmmSources
    String geneGeneNames
    Boolean listListHmmSources
    Boolean listListAvailableGeneNames
    File outputOutputFile
    Boolean noNoWrap
    Boolean getGetAaSequences
    Boolean concatenateConcatenateGenes
    File partitionPartitionFile
    Int maxMaxNumGenesMissingFromBin
    Int minMinNumBinsGeneOccurs
    String alignAlignWith
    String separatorSeparator
    Boolean returnReturnBestHit
    Boolean justJustDoIt
  }
  command <<<
    anvi-get-sequences-for-hmm-hits \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(profileProfileDb) then ("--profile-db " +  '"' + profileProfileDb + '"') else ""} \
      ~{if defined(collectionCollectionName) then ("--collection-name " +  '"' + collectionCollectionName + '"') else ""} \
      ~{if defined(binBinId) then ("--bin-id " +  '"' + binBinId + '"') else ""} \
      ~{if defined(binBinIdsFile) then ("--bin-ids-file " +  '"' + binBinIdsFile + '"') else ""} \
      ~{if defined(externalExternalGenomes) then ("--external-genomes " +  '"' + externalExternalGenomes + '"') else ""} \
      ~{if defined(internalInternalGenomes) then ("--internal-genomes " +  '"' + internalInternalGenomes + '"') else ""} \
      ~{if defined(hmmHmmSources) then ("--hmm-sources " +  '"' + hmmHmmSources + '"') else ""} \
      ~{if defined(geneGeneNames) then ("--gene-names " +  '"' + geneGeneNames + '"') else ""} \
      ~{true="--list-hmm-sources" false="" listListHmmSources} \
      ~{true="--list-available-gene-names" false="" listListAvailableGeneNames} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{true="--no-wrap" false="" noNoWrap} \
      ~{true="--get-aa-sequences" false="" getGetAaSequences} \
      ~{true="--concatenate-genes" false="" concatenateConcatenateGenes} \
      ~{if defined(partitionPartitionFile) then ("--partition-file " +  '"' + partitionPartitionFile + '"') else ""} \
      ~{if defined(maxMaxNumGenesMissingFromBin) then ("--max-num-genes-missing-from-bin " +  '"' + maxMaxNumGenesMissingFromBin + '"') else ""} \
      ~{if defined(minMinNumBinsGeneOccurs) then ("--min-num-bins-gene-occurs " +  '"' + minMinNumBinsGeneOccurs + '"') else ""} \
      ~{if defined(alignAlignWith) then ("--align-with " +  '"' + alignAlignWith + '"') else ""} \
      ~{if defined(separatorSeparator) then ("--separator " +  '"' + separatorSeparator + '"') else ""} \
      ~{true="--return-best-hit" false="" returnReturnBestHit} \
      ~{true="--just-do-it" false="" justJustDoIt}
  >>>
}
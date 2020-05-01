version 1.0

task AnviGenGeneLevelStatsDatabases {
  input {
    String contigsContigsDb
    String profileProfileDb
    String collectionCollectionName
    String binBinId
    File binBinIdsFile
    Boolean zerosZerosAreOutliers
    String outliersOutliersThreshold
    Boolean justJustDoIt
    Boolean inInSeqStats
  }
  command <<<
    anvi-gen-gene-level-stats-databases \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(profileProfileDb) then ("--profile-db " +  '"' + profileProfileDb + '"') else ""} \
      ~{if defined(collectionCollectionName) then ("--collection-name " +  '"' + collectionCollectionName + '"') else ""} \
      ~{if defined(binBinId) then ("--bin-id " +  '"' + binBinId + '"') else ""} \
      ~{if defined(binBinIdsFile) then ("--bin-ids-file " +  '"' + binBinIdsFile + '"') else ""} \
      ~{true="--zeros-are-outliers" false="" zerosZerosAreOutliers} \
      ~{if defined(outliersOutliersThreshold) then ("--outliers-threshold " +  '"' + outliersOutliersThreshold + '"') else ""} \
      ~{true="--just-do-it" false="" justJustDoIt} \
      ~{true="--inseq-stats" false="" inInSeqStats}
  >>>
}
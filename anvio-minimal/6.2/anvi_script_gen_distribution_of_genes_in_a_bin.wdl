version 1.0

task AnviScriptGenDistributionOfGenesInABin {
  input {
    String contigsContigsDb
    String profileProfileDb
    String collectionCollectionName
    String binBinId
    Float minMinDetection
    Float fractionFractionOfMedianCoverage
  }
  command <<<
    anvi-script-gen-distribution-of-genes-in-a-bin \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(profileProfileDb) then ("--profile-db " +  '"' + profileProfileDb + '"') else ""} \
      ~{if defined(collectionCollectionName) then ("--collection-name " +  '"' + collectionCollectionName + '"') else ""} \
      ~{if defined(binBinId) then ("--bin-id " +  '"' + binBinId + '"') else ""} \
      ~{if defined(minMinDetection) then ("--min-detection " +  '"' + minMinDetection + '"') else ""} \
      ~{if defined(fractionFractionOfMedianCoverage) then ("--fraction-of-median-coverage " +  '"' + fractionFractionOfMedianCoverage + '"') else ""}
  >>>
}
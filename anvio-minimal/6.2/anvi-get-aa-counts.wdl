version 1.0

task AnviGetAaCounts {
  input {
    String contigsContigsDb
    File outputOutputFile
    String profileProfileDb
    String collectionCollectionName
    File binBinIdsFile
    File contigsContigsOfInterest
    String geneGeneCallerIds
  }
  command <<<
    anvi-get-aa-counts \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(profileProfileDb) then ("--profile-db " +  '"' + profileProfileDb + '"') else ""} \
      ~{if defined(collectionCollectionName) then ("--collection-name " +  '"' + collectionCollectionName + '"') else ""} \
      ~{if defined(binBinIdsFile) then ("--bin-ids-file " +  '"' + binBinIdsFile + '"') else ""} \
      ~{if defined(contigsContigsOfInterest) then ("--contigs-of-interest " +  '"' + contigsContigsOfInterest + '"') else ""} \
      ~{if defined(geneGeneCallerIds) then ("--gene-caller-ids " +  '"' + geneGeneCallerIds + '"') else ""}
  >>>
}
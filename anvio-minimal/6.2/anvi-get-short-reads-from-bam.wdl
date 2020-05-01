version 1.0

task AnviGetShortReadsFromBam {
  input {
    String profileProfileDb
    String contigsContigsDb
    String collectionCollectionName
    String binBinId
    File binBinIdsFile
    File outputOutputFile
    File outputOutputFilePrefix
    Boolean gzipGzipOutput
    Boolean splitSplitR1AndR2
  }
  command <<<
    anvi-get-short-reads-from-bam \
      ~{if defined(profileProfileDb) then ("--profile-db " +  '"' + profileProfileDb + '"') else ""} \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(collectionCollectionName) then ("--collection-name " +  '"' + collectionCollectionName + '"') else ""} \
      ~{if defined(binBinId) then ("--bin-id " +  '"' + binBinId + '"') else ""} \
      ~{if defined(binBinIdsFile) then ("--bin-ids-file " +  '"' + binBinIdsFile + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(outputOutputFilePrefix) then ("--output-file-prefix " +  '"' + outputOutputFilePrefix + '"') else ""} \
      ~{true="--gzip-output" false="" gzipGzipOutput} \
      ~{true="--split-R1-and-R2" false="" splitSplitR1AndR2}
  >>>
}
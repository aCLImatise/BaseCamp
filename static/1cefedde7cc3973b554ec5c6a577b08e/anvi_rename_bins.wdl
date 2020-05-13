version 1.0

task AnviRenameBins {
  input {
    String contigsContigsDb
    String profileProfileDb
    String collectionCollectionToRead
    String collectionCollectionToWrite
    String prefixPrefix
    String reportReportFile
    Boolean listListCollections
    Boolean dryDryRun
    String sizeSizeForMag
  }
  command <<<
    anvi-rename-bins \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(profileProfileDb) then ("--profile-db " +  '"' + profileProfileDb + '"') else ""} \
      ~{if defined(collectionCollectionToRead) then ("--collection-to-read " +  '"' + collectionCollectionToRead + '"') else ""} \
      ~{if defined(collectionCollectionToWrite) then ("--collection-to-write " +  '"' + collectionCollectionToWrite + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(reportReportFile) then ("--report-file " +  '"' + reportReportFile + '"') else ""} \
      ~{true="--list-collections" false="" listListCollections} \
      ~{true="--dry-run" false="" dryDryRun} \
      ~{if defined(sizeSizeForMag) then ("--size-for-MAG " +  '"' + sizeSizeForMag + '"') else ""}
  >>>
}
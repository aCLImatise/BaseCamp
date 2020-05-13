version 1.0

task Krakenhll {
  input {
    String dbDb
    String threadsThreads
    Boolean fastFastAInput
    Boolean fastFastQInput
    Boolean gzipGzipCompressed
    Boolean bzip2Bzip2Compressed
    Int precisionPrecision
    Boolean quickQuick
    String minMinHits
    File unclassifiedUnclassifiedOut
    File classifiedClassifiedOut
    File outputOutput
    Boolean onlyOnlyClassifiedOutput
    Boolean preloadPreload
    Boolean pairedPaired
    Boolean checkCheckNames
    Boolean uidUidMapping
  }
  command <<<
    krakenhll \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--fasta-input" false="" fastFastAInput} \
      ~{true="--fastq-input" false="" fastFastQInput} \
      ~{true="--gzip-compressed" false="" gzipGzipCompressed} \
      ~{true="--bzip2-compressed" false="" bzip2Bzip2Compressed} \
      ~{if defined(precisionPrecision) then ("--precision " +  '"' + precisionPrecision + '"') else ""} \
      ~{true="--quick" false="" quickQuick} \
      ~{if defined(minMinHits) then ("--min-hits " +  '"' + minMinHits + '"') else ""} \
      ~{if defined(unclassifiedUnclassifiedOut) then ("--unclassified-out " +  '"' + unclassifiedUnclassifiedOut + '"') else ""} \
      ~{if defined(classifiedClassifiedOut) then ("--classified-out " +  '"' + classifiedClassifiedOut + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--only-classified-output" false="" onlyOnlyClassifiedOutput} \
      ~{true="--preload" false="" preloadPreload} \
      ~{true="--paired" false="" pairedPaired} \
      ~{true="--check-names" false="" checkCheckNames} \
      ~{true="--uid-mapping" false="" uidUidMapping}
  >>>
}
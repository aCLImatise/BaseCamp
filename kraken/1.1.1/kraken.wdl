version 1.0

task Kraken {
  input {
    String dbDb
    String threadsThreads
    Boolean fastFastAInput
    Boolean fastFastQInput
    Boolean fastFastQOutput
    Boolean gzipGzipCompressed
    Boolean bzip2Bzip2Compressed
    Boolean quickQuick
    String minMinHits
    File unclassifiedUnclassifiedOut
    File classifiedClassifiedOut
    String outOutFmt
    File outputOutput
    Boolean onlyOnlyClassifiedOutput
    Boolean preloadPreload
    Boolean pairedPaired
    Boolean checkCheckNames
  }
  command <<<
    kraken \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--fasta-input" false="" fastFastAInput} \
      ~{true="--fastq-input" false="" fastFastQInput} \
      ~{true="--fastq-output" false="" fastFastQOutput} \
      ~{true="--gzip-compressed" false="" gzipGzipCompressed} \
      ~{true="--bzip2-compressed" false="" bzip2Bzip2Compressed} \
      ~{true="--quick" false="" quickQuick} \
      ~{if defined(minMinHits) then ("--min-hits " +  '"' + minMinHits + '"') else ""} \
      ~{if defined(unclassifiedUnclassifiedOut) then ("--unclassified-out " +  '"' + unclassifiedUnclassifiedOut + '"') else ""} \
      ~{if defined(classifiedClassifiedOut) then ("--classified-out " +  '"' + classifiedClassifiedOut + '"') else ""} \
      ~{if defined(outOutFmt) then ("--out-fmt " +  '"' + outOutFmt + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--only-classified-output" false="" onlyOnlyClassifiedOutput} \
      ~{true="--preload" false="" preloadPreload} \
      ~{true="--paired" false="" pairedPaired} \
      ~{true="--check-names" false="" checkCheckNames}
  >>>
}
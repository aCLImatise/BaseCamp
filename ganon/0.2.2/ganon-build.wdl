version 1.0

task GanonBuild {
  input {
    String referenceReferenceFiles
    String directoryDirectoryReferenceFiles
    String extensionExtension
    String seqSeqIdBinFile
    String outputOutputFilterFile
    String updateUpdateFilterFile
    Boolean updateUpdateComplete
    String filterFilterSize
    String filterFilterSizeBits
    String kmKmErSize
    String hashHashFunctions
    String threadsThreads
    String nNRefs
    String nNBatches
    Boolean verboseVerbose
    Boolean quietQuiet
  }
  command <<<
    ganon-build \
      ~{if defined(referenceReferenceFiles) then ("--reference-files " +  '"' + referenceReferenceFiles + '"') else ""} \
      ~{if defined(directoryDirectoryReferenceFiles) then ("--directory-reference-files " +  '"' + directoryDirectoryReferenceFiles + '"') else ""} \
      ~{if defined(extensionExtension) then ("--extension " +  '"' + extensionExtension + '"') else ""} \
      ~{if defined(seqSeqIdBinFile) then ("--seqid-bin-file " +  '"' + seqSeqIdBinFile + '"') else ""} \
      ~{if defined(outputOutputFilterFile) then ("--output-filter-file " +  '"' + outputOutputFilterFile + '"') else ""} \
      ~{if defined(updateUpdateFilterFile) then ("--update-filter-file " +  '"' + updateUpdateFilterFile + '"') else ""} \
      ~{true="--update-complete" false="" updateUpdateComplete} \
      ~{if defined(filterFilterSize) then ("--filter-size " +  '"' + filterFilterSize + '"') else ""} \
      ~{if defined(filterFilterSizeBits) then ("--filter-size-bits " +  '"' + filterFilterSizeBits + '"') else ""} \
      ~{if defined(kmKmErSize) then ("--kmer-size " +  '"' + kmKmErSize + '"') else ""} \
      ~{if defined(hashHashFunctions) then ("--hash-functions " +  '"' + hashHashFunctions + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(nNRefs) then ("--n-refs " +  '"' + nNRefs + '"') else ""} \
      ~{if defined(nNBatches) then ("--n-batches " +  '"' + nNBatches + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}
version 1.0

task SambambaMarkdup {
  input {
    Boolean removeRemoveDuplicates
    String nNThreads
    String compressionCompressionLevel
    Boolean showShowProgress
    String tmpdirTmpdir
    String hashHashTableSize
    String overflowOverflowListSize
    String sortSortBufferSize
    String ioIoBufferSize
  }
  command <<<
    sambamba markdup \
      ~{true="--remove-duplicates" false="" removeRemoveDuplicates} \
      ~{if defined(nNThreads) then ("--nthreads " +  '"' + nNThreads + '"') else ""} \
      ~{if defined(compressionCompressionLevel) then ("--compression-level " +  '"' + compressionCompressionLevel + '"') else ""} \
      ~{true="--show-progress" false="" showShowProgress} \
      ~{if defined(tmpdirTmpdir) then ("--tmpdir " +  '"' + tmpdirTmpdir + '"') else ""} \
      ~{if defined(hashHashTableSize) then ("--hash-table-size " +  '"' + hashHashTableSize + '"') else ""} \
      ~{if defined(overflowOverflowListSize) then ("--overflow-list-size " +  '"' + overflowOverflowListSize + '"') else ""} \
      ~{if defined(sortSortBufferSize) then ("--sort-buffer-size " +  '"' + sortSortBufferSize + '"') else ""} \
      ~{if defined(ioIoBufferSize) then ("--io-buffer-size " +  '"' + ioIoBufferSize + '"') else ""}
  >>>
}
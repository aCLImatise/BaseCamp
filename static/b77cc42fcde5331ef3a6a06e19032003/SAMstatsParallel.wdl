version 1.0

task SAMstatsParallel {
  input {
    String sortedSortedSamFile
    String outOutF
    String chunkChunkSize
    String threadsThreads
  }
  command <<<
    SAMstatsParallel \
      ~{if defined(sortedSortedSamFile) then ("--sorted_sam_file " +  '"' + sortedSortedSamFile + '"') else ""} \
      ~{if defined(outOutF) then ("--outf " +  '"' + outOutF + '"') else ""} \
      ~{if defined(chunkChunkSize) then ("--chunk_size " +  '"' + chunkChunkSize + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}
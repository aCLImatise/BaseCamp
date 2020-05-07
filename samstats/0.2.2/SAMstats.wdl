version 1.0

task SAMstats {
  input {
    String sortedSortedSamFile
    String outOutF
    String chunkChunkSize
  }
  command <<<
    SAMstats \
      ~{if defined(sortedSortedSamFile) then ("--sorted_sam_file " +  '"' + sortedSortedSamFile + '"') else ""} \
      ~{if defined(outOutF) then ("--outf " +  '"' + outOutF + '"') else ""} \
      ~{if defined(chunkChunkSize) then ("--chunk_size " +  '"' + chunkChunkSize + '"') else ""}
  >>>
}
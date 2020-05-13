version 1.0

task ChunkedScatter {
  input {
    String prefixPrefix
    String inputInput
    Int chunkChunkSize
    Int minimumMinimumBpPerFile
    String overlapOverlap
  }
  command <<<
    chunked-scatter \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(chunkChunkSize) then ("--chunk-size " +  '"' + chunkChunkSize + '"') else ""} \
      ~{if defined(minimumMinimumBpPerFile) then ("--minimum-bp-per-file " +  '"' + minimumMinimumBpPerFile + '"') else ""} \
      ~{if defined(overlapOverlap) then ("--overlap " +  '"' + overlapOverlap + '"') else ""}
  >>>
}
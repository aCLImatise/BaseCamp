version 1.0

task MafChunk.py {
  input {
    String probProb
    String? chunkChunkSize
    String? outOutDir
  }
  command <<<
    maf_chunk.py \
      ~{chunkChunkSize} \
      ~{if defined(probProb) then ("--prob " +  '"' + probProb + '"') else ""} \
      ~{outOutDir}
  >>>
}
version 1.0

task Pbhoover {
  input {
    Boolean consensusConsensus
    String inputInput
    String outputOutput
    String referenceReference
    String nprocNproc
    String chunksizeChunksize
    String tempdirTempdir
    Boolean debugDebug
  }
  command <<<
    pbhoover \
      ~{true="--consensus" false="" consensusConsensus} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(nprocNproc) then ("--nproc " +  '"' + nprocNproc + '"') else ""} \
      ~{if defined(chunksizeChunksize) then ("--chunksize " +  '"' + chunksizeChunksize + '"') else ""} \
      ~{if defined(tempdirTempdir) then ("--tempdir " +  '"' + tempdirTempdir + '"') else ""} \
      ~{true="--debug" false="" debugDebug}
  >>>
}
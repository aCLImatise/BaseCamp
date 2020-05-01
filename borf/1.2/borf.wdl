version 1.0

task Borf {
  input {
    String outputOutputPath
    Boolean strandStrand
    Boolean allAllOrfs
    String orfOrfLength
    String upstreamUpstreamIncompleteLength
    String batchBatchSize
    Boolean forceForceOverwrite
    String? fastFastAFile
  }
  command <<<
    borf \
      ~{fastFastAFile} \
      ~{if defined(outputOutputPath) then ("--output_path " +  '"' + outputOutputPath + '"') else ""} \
      ~{true="--strand" false="" strandStrand} \
      ~{true="--all_orfs" false="" allAllOrfs} \
      ~{if defined(orfOrfLength) then ("--orf_length " +  '"' + orfOrfLength + '"') else ""} \
      ~{if defined(upstreamUpstreamIncompleteLength) then ("--upstream_incomplete_length " +  '"' + upstreamUpstreamIncompleteLength + '"') else ""} \
      ~{if defined(batchBatchSize) then ("--batch_size " +  '"' + batchBatchSize + '"') else ""} \
      ~{true="--force_overwrite" false="" forceForceOverwrite}
  >>>
}
version 1.0

task PlanemoCiFindRepos {
  input {
    File excludeExclude
    File excludeExcludeFrom
    String changedChangedInCommitRange
    Int chunkChunkCount
    Int chunkChunk
    String outputOutput
  }
  command <<<
    planemo ci_find_repos \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{if defined(excludeExcludeFrom) then ("--exclude_from " +  '"' + excludeExcludeFrom + '"') else ""} \
      ~{if defined(changedChangedInCommitRange) then ("--changed_in_commit_range " +  '"' + changedChangedInCommitRange + '"') else ""} \
      ~{if defined(chunkChunkCount) then ("--chunk_count " +  '"' + chunkChunkCount + '"') else ""} \
      ~{if defined(chunkChunk) then ("--chunk " +  '"' + chunkChunk + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}
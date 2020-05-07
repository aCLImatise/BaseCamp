version 1.0

task ArvPut {
  input {
    String trashTrashAfter
    String projectProjectUuid
    String nameName
    Boolean progressProgress
    Boolean noNoProgress
    Boolean batchBatchProgress
    Boolean silentSilent
    Boolean resumeResume
    Boolean noNoResume
    Boolean cacheCache
    Boolean noNoCache
    String retriesRetries
    File? pathPath
  }
  command <<<
    arv-put \
      ~{pathPath} \
      ~{if defined(trashTrashAfter) then ("--trash-after " +  '"' + trashTrashAfter + '"') else ""} \
      ~{if defined(projectProjectUuid) then ("--project-uuid " +  '"' + projectProjectUuid + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{true="--progress" false="" progressProgress} \
      ~{true="--no-progress" false="" noNoProgress} \
      ~{true="--batch-progress" false="" batchBatchProgress} \
      ~{true="--silent" false="" silentSilent} \
      ~{true="--resume" false="" resumeResume} \
      ~{true="--no-resume" false="" noNoResume} \
      ~{true="--cache" false="" cacheCache} \
      ~{true="--no-cache" false="" noNoCache} \
      ~{if defined(retriesRetries) then ("--retries " +  '"' + retriesRetries + '"') else ""}
  >>>
}
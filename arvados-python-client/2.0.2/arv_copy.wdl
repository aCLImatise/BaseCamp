version 1.0

task ArvCopy {
  input {
    Boolean verboseVerbose
    Boolean progressProgress
    Boolean noNoProgress
    Boolean forceForce
    String srcSrc
    String dstDst
    Boolean recursiveRecursive
    Boolean noNoRecursive
    String projectProjectUuid
    String retriesRetries
    String? objectObjectUuid
  }
  command <<<
    arv-copy \
      ~{objectObjectUuid} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--progress" false="" progressProgress} \
      ~{true="--no-progress" false="" noNoProgress} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(srcSrc) then ("--src " +  '"' + srcSrc + '"') else ""} \
      ~{if defined(dstDst) then ("--dst " +  '"' + dstDst + '"') else ""} \
      ~{true="--recursive" false="" recursiveRecursive} \
      ~{true="--no-recursive" false="" noNoRecursive} \
      ~{if defined(projectProjectUuid) then ("--project-uuid " +  '"' + projectProjectUuid + '"') else ""} \
      ~{if defined(retriesRetries) then ("--retries " +  '"' + retriesRetries + '"') else ""}
  >>>
}
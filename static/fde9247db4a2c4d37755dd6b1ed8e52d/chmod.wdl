version 1.0

task Chmod {
  input {
    Boolean changesChanges
    Boolean silentSilent
    Boolean verboseVerbose
    Boolean noNoPreserveRoot
    Boolean preservePreserveRoot
    String referenceReference
    Boolean recursiveRecursive
  }
  command <<<
    chmod \
      ~{true="--changes" false="" changesChanges} \
      ~{true="--silent" false="" silentSilent} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--no-preserve-root" false="" noNoPreserveRoot} \
      ~{true="--preserve-root" false="" preservePreserveRoot} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{true="--recursive" false="" recursiveRecursive}
  >>>
}
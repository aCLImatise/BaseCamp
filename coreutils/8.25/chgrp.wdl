version 1.0

task Chgrp {
  input {
    Boolean changesChanges
    Boolean silentSilent
    Boolean verboseVerbose
    Boolean dereferenceDereference
    Boolean noNoPreserveRoot
    Boolean preservePreserveRoot
    String referenceReference
    Boolean recursiveRecursive
    Boolean hH
    Boolean lL
    Boolean pP
  }
  command <<<
    chgrp \
      ~{true="--changes" false="" changesChanges} \
      ~{true="--silent" false="" silentSilent} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--dereference" false="" dereferenceDereference} \
      ~{true="--no-preserve-root" false="" noNoPreserveRoot} \
      ~{true="--preserve-root" false="" preservePreserveRoot} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{true="--recursive" false="" recursiveRecursive} \
      ~{true="-H" false="" hH} \
      ~{true="-L" false="" lL} \
      ~{true="-P" false="" pP}
  >>>
}
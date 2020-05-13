version 1.0

task Chown {
  input {
    Boolean noNoPreserveRoot
    Boolean preservePreserveRoot
    String referenceReference
    Boolean recursiveRecursive
    Boolean hH
    Boolean lL
    Boolean pP
  }
  command <<<
    chown \
      ~{true="--no-preserve-root" false="" noNoPreserveRoot} \
      ~{true="--preserve-root" false="" preservePreserveRoot} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{true="--recursive" false="" recursiveRecursive} \
      ~{true="-H" false="" hH} \
      ~{true="-L" false="" lL} \
      ~{true="-P" false="" pP}
  >>>
}
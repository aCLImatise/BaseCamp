version 1.0

task Chcon {
  input {
    Boolean dereferenceDereference
    String userUser
    String roleRole
    String typeType
    String rangeRange
    Boolean noNoPreserveRoot
    Boolean preservePreserveRoot
    String referenceReference
    Boolean recursiveRecursive
    Boolean verboseVerbose
    Boolean hH
    Boolean lL
    Boolean pP
  }
  command <<<
    chcon \
      ~{true="--dereference" false="" dereferenceDereference} \
      ~{if defined(userUser) then ("--user " +  '"' + userUser + '"') else ""} \
      ~{if defined(roleRole) then ("--role " +  '"' + roleRole + '"') else ""} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{if defined(rangeRange) then ("--range " +  '"' + rangeRange + '"') else ""} \
      ~{true="--no-preserve-root" false="" noNoPreserveRoot} \
      ~{true="--preserve-root" false="" preservePreserveRoot} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{true="--recursive" false="" recursiveRecursive} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="-H" false="" hH} \
      ~{true="-L" false="" lL} \
      ~{true="-P" false="" pP}
  >>>
}
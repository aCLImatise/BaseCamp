version 1.0

task MeaMix {
  input {
    String referenceReference
    Boolean noNoSlideRule
    Boolean noNoConflictRule
    Boolean verboseVerbose
  }
  command <<<
    mea_mix \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{true="--no-slide-rule" false="" noNoSlideRule} \
      ~{true="--no-conflict-rule" false="" noNoConflictRule} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}
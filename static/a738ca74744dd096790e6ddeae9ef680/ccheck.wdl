version 1.0

task Ccheck {
  input {
    File referenceReference
    Boolean ancientAncient
    Boolean transversionsTransversions
    String spanSpan
    String numNumPos
    Boolean forceForce
    Boolean tableTable
    Boolean verboseVerbose
    String? alAlNmAln
  }
  command <<<
    ccheck \
      ~{alAlNmAln} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{true="--ancient" false="" ancientAncient} \
      ~{true="--transversions" false="" transversionsTransversions} \
      ~{if defined(spanSpan) then ("--span " +  '"' + spanSpan + '"') else ""} \
      ~{if defined(numNumPos) then ("--numpos " +  '"' + numNumPos + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{true="--table" false="" tableTable} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}
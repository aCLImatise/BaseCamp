version 1.0

task IntervalStats {
  input {
    File queryQuery
    File referenceReference
    File domainDomain
    File outputOutput
    Boolean overlapOverlap
    Boolean selfSelf
    Boolean chrChr
    Boolean distDistMap
  }
  command <<<
    IntervalStats \
      ~{if defined(queryQuery) then ("--query " +  '"' + queryQuery + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(domainDomain) then ("--domain " +  '"' + domainDomain + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--overlap" false="" overlapOverlap} \
      ~{true="--self" false="" selfSelf} \
      ~{true="--chr" false="" chrChr} \
      ~{true="--distmap" false="" distDistMap}
  >>>
}
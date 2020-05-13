version 1.0

task AbyssLayout {
  input {
    String minMinLength
    String minMinOverlap
    String kmKmEr
    File outOut
    File graphGraph
    Boolean tredTred
    Boolean noNoTred
    Boolean ssSs
    Boolean noNoSs
    Boolean verboseVerbose
    String? overlapOverlap
  }
  command <<<
    abyss-layout \
      ~{overlapOverlap} \
      ~{if defined(minMinLength) then ("--min-length " +  '"' + minMinLength + '"') else ""} \
      ~{if defined(minMinOverlap) then ("--min-overlap " +  '"' + minMinOverlap + '"') else ""} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(graphGraph) then ("--graph " +  '"' + graphGraph + '"') else ""} \
      ~{true="--tred" false="" tredTred} \
      ~{true="--no-tred" false="" noNoTred} \
      ~{true="--SS" false="" ssSs} \
      ~{true="--no-SS" false="" noNoSs} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}
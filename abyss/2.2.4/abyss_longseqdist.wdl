version 1.0

task AbyssLongseqdist {
  input {
    String kmKmEr
    String minMinGap
    Boolean verboseVerbose
    String? samSam
    String? distDist
  }
  command <<<
    abyss-longseqdist \
      ~{samSam} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(minMinGap) then ("--min-gap " +  '"' + minMinGap + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{distDist}
  >>>
}
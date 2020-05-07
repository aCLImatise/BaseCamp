version 1.0

task LongestPath {
  input {
    String threadsThreads
    File outputOutput
    File dotDot
    String overlapOverlapPlay
    String errorsErrors
    Boolean basesBases
    File unitUnitIgsLengths
    File unitUnitIgsSequences
    String kKMer
    String densityDensity
    String minMinLength
    String tilingTiling
    String trimTrim
  }
  command <<<
    longest_path \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(dotDot) then ("--dot " +  '"' + dotDot + '"') else ""} \
      ~{if defined(overlapOverlapPlay) then ("--overlap-play " +  '"' + overlapOverlapPlay + '"') else ""} \
      ~{if defined(errorsErrors) then ("--errors " +  '"' + errorsErrors + '"') else ""} \
      ~{true="--bases" false="" basesBases} \
      ~{if defined(unitUnitIgsLengths) then ("--unitigs-lengths " +  '"' + unitUnitIgsLengths + '"') else ""} \
      ~{if defined(unitUnitIgsSequences) then ("--unitigs-sequences " +  '"' + unitUnitIgsSequences + '"') else ""} \
      ~{if defined(kKMer) then ("--k-mer " +  '"' + kKMer + '"') else ""} \
      ~{if defined(densityDensity) then ("--density " +  '"' + densityDensity + '"') else ""} \
      ~{if defined(minMinLength) then ("--min-length " +  '"' + minMinLength + '"') else ""} \
      ~{if defined(tilingTiling) then ("--tiling " +  '"' + tilingTiling + '"') else ""} \
      ~{if defined(trimTrim) then ("--trim " +  '"' + trimTrim + '"') else ""}
  >>>
}
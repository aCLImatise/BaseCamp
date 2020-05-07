version 1.0

task CactusCoveredIntervals {
  input {
    Boolean queryQueryOffsets
    String originOrigin
    String originOrigin
    Boolean markMarkEnd
    String progressProgress
  }
  command <<<
    cactus_covered_intervals \
      ~{true="--queryoffsets" false="" queryQueryOffsets} \
      ~{if defined(originOrigin) then ("--origin " +  '"' + originOrigin + '"') else ""} \
      ~{if defined(originOrigin) then ("--origin " +  '"' + originOrigin + '"') else ""} \
      ~{true="--markend" false="" markMarkEnd} \
      ~{if defined(progressProgress) then ("--progress " +  '"' + progressProgress + '"') else ""}
  >>>
}
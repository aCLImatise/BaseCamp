version 1.0

task Blasr {
  input {
    Boolean ignoreIgnoreHqRegions
    Boolean placePlaceRepeatsRandomly
    Boolean allowAllowAdjacentIndels
    Boolean fastFastSdp
    String maxMaxScore
    Boolean minMinAlnlength
    Boolean minMinPctSimilarity
    Boolean minMinPctAccuracy
    String nprocNproc
    String startStart
    String strideStride
    Boolean subsampleSubsample
    String holeHoleNumbers
    String? leftmostLeftmost
  }
  command <<<
    blasr \
      ~{leftmostLeftmost} \
      ~{true="--ignoreHQRegions" false="" ignoreIgnoreHqRegions} \
      ~{true="--placeRepeatsRandomly" false="" placePlaceRepeatsRandomly} \
      ~{true="--allowAdjacentIndels" false="" allowAllowAdjacentIndels} \
      ~{true="--fastSDP" false="" fastFastSdp} \
      ~{if defined(maxMaxScore) then ("--maxScore " +  '"' + maxMaxScore + '"') else ""} \
      ~{true="--minAlnLength" false="" minMinAlnlength} \
      ~{true="--minPctSimilarity" false="" minMinPctSimilarity} \
      ~{true="--minPctAccuracy" false="" minMinPctAccuracy} \
      ~{if defined(nprocNproc) then ("--nproc " +  '"' + nprocNproc + '"') else ""} \
      ~{if defined(startStart) then ("--start " +  '"' + startStart + '"') else ""} \
      ~{if defined(strideStride) then ("--stride " +  '"' + strideStride + '"') else ""} \
      ~{true="--subsample" false="" subsampleSubsample} \
      ~{if defined(holeHoleNumbers) then ("--holeNumbers " +  '"' + holeHoleNumbers + '"') else ""}
  >>>
}
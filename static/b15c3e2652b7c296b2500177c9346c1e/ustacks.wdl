version 1.0

task Ustacks {
  input {
    Boolean keepKeepHighCov
    Boolean highHighCovThRes
    String maxMaxLocusStacks
    String kKLen
    Boolean maxMaxGaps
    Boolean minMinAlnLen
    Boolean disableDisableGapped
    String alphaAlpha
    String boundBoundLow
    String boundBoundHigh
    String bcBcErrFreq
  }
  command <<<
    ustacks \
      ~{true="--keep-high-cov" false="" keepKeepHighCov} \
      ~{true="--high-cov-thres" false="" highHighCovThRes} \
      ~{if defined(maxMaxLocusStacks) then ("--max-locus-stacks " +  '"' + maxMaxLocusStacks + '"') else ""} \
      ~{if defined(kKLen) then ("--k-len " +  '"' + kKLen + '"') else ""} \
      ~{true="--max-gaps" false="" maxMaxGaps} \
      ~{true="--min-aln-len" false="" minMinAlnLen} \
      ~{true="--disable-gapped" false="" disableDisableGapped} \
      ~{if defined(alphaAlpha) then ("--alpha " +  '"' + alphaAlpha + '"') else ""} \
      ~{if defined(boundBoundLow) then ("--bound-low " +  '"' + boundBoundLow + '"') else ""} \
      ~{if defined(boundBoundHigh) then ("--bound-high " +  '"' + boundBoundHigh + '"') else ""} \
      ~{if defined(bcBcErrFreq) then ("--bc-err-freq " +  '"' + bcBcErrFreq + '"') else ""}
  >>>
}
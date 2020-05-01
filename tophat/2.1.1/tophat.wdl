version 1.0

task Tophat {
  input {
    Boolean tmpTmpDir
    Boolean zZ
    Boolean xX
    Boolean b2B2N
    Boolean b2B2L
    Boolean b2B2I
    Boolean b2B2NCeil
    Boolean b2B2GBar
    Boolean b2B2Mp
    Boolean b2B2Np
    Boolean b2B2Rdg
    Boolean b2B2Rfg
    Boolean b2B2ScoreMin
    Boolean b2B2D
    Boolean b2B2R
    Boolean fusionFusionAnchorLength
    Boolean fusionFusionMinDist
    Boolean fusionFusionReadMismatches
    Boolean fusionFusionMultiReads
    Boolean fusionFusionMultiPairs
    Boolean fusionFusionIgnoreChromosomes
    Boolean fusionFusionDoNotResolveConflicts
  }
  command <<<
    tophat \
      ~{true="--tmp-dir" false="" tmpTmpDir} \
      ~{true="-z" false="" zZ} \
      ~{true="-X" false="" xX} \
      ~{true="--b2-N" false="" b2B2N} \
      ~{true="--b2-L" false="" b2B2L} \
      ~{true="--b2-i" false="" b2B2I} \
      ~{true="--b2-n-ceil" false="" b2B2NCeil} \
      ~{true="--b2-gbar" false="" b2B2GBar} \
      ~{true="--b2-mp" false="" b2B2Mp} \
      ~{true="--b2-np" false="" b2B2Np} \
      ~{true="--b2-rdg" false="" b2B2Rdg} \
      ~{true="--b2-rfg" false="" b2B2Rfg} \
      ~{true="--b2-score-min" false="" b2B2ScoreMin} \
      ~{true="--b2-D" false="" b2B2D} \
      ~{true="--b2-R" false="" b2B2R} \
      ~{true="--fusion-anchor-length" false="" fusionFusionAnchorLength} \
      ~{true="--fusion-min-dist" false="" fusionFusionMinDist} \
      ~{true="--fusion-read-mismatches" false="" fusionFusionReadMismatches} \
      ~{true="--fusion-multireads" false="" fusionFusionMultiReads} \
      ~{true="--fusion-multipairs" false="" fusionFusionMultiPairs} \
      ~{true="--fusion-ignore-chromosomes" false="" fusionFusionIgnoreChromosomes} \
      ~{true="--fusion-do-not-resolve-conflicts" false="" fusionFusionDoNotResolveConflicts}
  >>>
}
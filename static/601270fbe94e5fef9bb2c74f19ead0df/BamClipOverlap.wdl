version 1.0

task BamClipOverlap {
  input {
    File inIn
    File outOut
    Boolean overlapOverlapMismatchMapq
    Boolean overlapOverlapMismatchRemove
    Boolean overlapOverlapMismatchBaseQ
    Boolean overlapOverlapMismatchBaseN
    Boolean ignoreIgnoreIndels
    Boolean vV
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    BamClipOverlap \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-overlap_mismatch_mapq" false="" overlapOverlapMismatchMapq} \
      ~{true="-overlap_mismatch_remove" false="" overlapOverlapMismatchRemove} \
      ~{true="-overlap_mismatch_baseq" false="" overlapOverlapMismatchBaseQ} \
      ~{true="-overlap_mismatch_basen" false="" overlapOverlapMismatchBaseN} \
      ~{true="-ignore_indels" false="" ignoreIgnoreIndels} \
      ~{true="-v" false="" vV} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}
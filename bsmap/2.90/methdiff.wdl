version 1.0

task Methdiff.py {
  input {
    File outOut
    File refRef
    String binBin
    String pvalPval
    String diffDiff
    String contextContext
    String labelsLabels
    String minMinDepth
    String strandStrand
    Boolean quietQuiet
  }
  command <<<
    methdiff.py \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(binBin) then ("--bin " +  '"' + binBin + '"') else ""} \
      ~{if defined(pvalPval) then ("--pval " +  '"' + pvalPval + '"') else ""} \
      ~{if defined(diffDiff) then ("--diff " +  '"' + diffDiff + '"') else ""} \
      ~{if defined(contextContext) then ("--context " +  '"' + contextContext + '"') else ""} \
      ~{if defined(labelsLabels) then ("--labels " +  '"' + labelsLabels + '"') else ""} \
      ~{if defined(minMinDepth) then ("--min-depth " +  '"' + minMinDepth + '"') else ""} \
      ~{if defined(strandStrand) then ("--strand " +  '"' + strandStrand + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}
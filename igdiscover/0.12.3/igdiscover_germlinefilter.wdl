version 1.0

task IgdiscoverGermlinefilter {
  input {
    String clusterClusterSize
    String crossCrossMappingRatio
    String cloCloNoTypeRatio
    String exactExactRatio
    String cdr3Cdr3SharedRatio
    String minimumMinimumDbDiff
    String maximumMaximumN
    String uniqueUniqueCdr3s
    String uniqueUniqueJ
    String uniqueUniqueDRatio
    String uniqueUniqueDThreshold
    Boolean allowAllowStop
    String whitelistWhitelist
    File fastFastA
    File annotateAnnotate
  }
  command <<<
    igdiscover germlinefilter \
      ~{if defined(clusterClusterSize) then ("--cluster-size " +  '"' + clusterClusterSize + '"') else ""} \
      ~{if defined(crossCrossMappingRatio) then ("--cross-mapping-ratio " +  '"' + crossCrossMappingRatio + '"') else ""} \
      ~{if defined(cloCloNoTypeRatio) then ("--clonotype-ratio " +  '"' + cloCloNoTypeRatio + '"') else ""} \
      ~{if defined(exactExactRatio) then ("--exact-ratio " +  '"' + exactExactRatio + '"') else ""} \
      ~{if defined(cdr3Cdr3SharedRatio) then ("--cdr3-shared-ratio " +  '"' + cdr3Cdr3SharedRatio + '"') else ""} \
      ~{if defined(minimumMinimumDbDiff) then ("--minimum-db-diff " +  '"' + minimumMinimumDbDiff + '"') else ""} \
      ~{if defined(maximumMaximumN) then ("--maximum-N " +  '"' + maximumMaximumN + '"') else ""} \
      ~{if defined(uniqueUniqueCdr3s) then ("--unique-cdr3s " +  '"' + uniqueUniqueCdr3s + '"') else ""} \
      ~{if defined(uniqueUniqueJ) then ("--unique-J " +  '"' + uniqueUniqueJ + '"') else ""} \
      ~{if defined(uniqueUniqueDRatio) then ("--unique-D-ratio " +  '"' + uniqueUniqueDRatio + '"') else ""} \
      ~{if defined(uniqueUniqueDThreshold) then ("--unique-D-threshold " +  '"' + uniqueUniqueDThreshold + '"') else ""} \
      ~{true="--allow-stop" false="" allowAllowStop} \
      ~{if defined(whitelistWhitelist) then ("--whitelist " +  '"' + whitelistWhitelist + '"') else ""} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(annotateAnnotate) then ("--annotate " +  '"' + annotateAnnotate + '"') else ""}
  >>>
}
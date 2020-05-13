version 1.0

task GatkToGvcf {
  input {
    String chromChromDepthFile
    String maxMaxDepthFactor
    String minMinGqX
    String minMinMq
    String minMinQd
    String maxMaxSiteFs
    String maxMaxHapScore
    String minMinMQrs
    String minMinSiteRPrs
    String maxMaxInDelFs
    String minMinInDelRPrs
    Boolean noNoDefaultFilters
    String minMinBlockAbleNonRef
    Boolean skipSkipHeader
    String blockBlockRangeFactor
    String blockBlockLabel
    String blockBlockStats
    Boolean noNoBlockCompression
    String? allAllSites
    String? gvcGvcF
  }
  command <<<
    gatk_to_gvcf \
      ~{allAllSites} \
      ~{if defined(chromChromDepthFile) then ("--chrom-depth-file " +  '"' + chromChromDepthFile + '"') else ""} \
      ~{if defined(maxMaxDepthFactor) then ("--max-depth-factor " +  '"' + maxMaxDepthFactor + '"') else ""} \
      ~{if defined(minMinGqX) then ("--min-gqx " +  '"' + minMinGqX + '"') else ""} \
      ~{if defined(minMinMq) then ("--min-mq " +  '"' + minMinMq + '"') else ""} \
      ~{if defined(minMinQd) then ("--min-qd " +  '"' + minMinQd + '"') else ""} \
      ~{if defined(maxMaxSiteFs) then ("--max-site-fs " +  '"' + maxMaxSiteFs + '"') else ""} \
      ~{if defined(maxMaxHapScore) then ("--max-hapscore " +  '"' + maxMaxHapScore + '"') else ""} \
      ~{if defined(minMinMQrs) then ("--min-mqrs " +  '"' + minMinMQrs + '"') else ""} \
      ~{if defined(minMinSiteRPrs) then ("--min-site-rprs " +  '"' + minMinSiteRPrs + '"') else ""} \
      ~{if defined(maxMaxInDelFs) then ("--max-indel-fs " +  '"' + maxMaxInDelFs + '"') else ""} \
      ~{if defined(minMinInDelRPrs) then ("--min-indel-rprs " +  '"' + minMinInDelRPrs + '"') else ""} \
      ~{true="--no-default-filters" false="" noNoDefaultFilters} \
      ~{if defined(minMinBlockAbleNonRef) then ("--min-blockable-nonref " +  '"' + minMinBlockAbleNonRef + '"') else ""} \
      ~{true="--skip-header" false="" skipSkipHeader} \
      ~{if defined(blockBlockRangeFactor) then ("--block-range-factor " +  '"' + blockBlockRangeFactor + '"') else ""} \
      ~{if defined(blockBlockLabel) then ("--block-label " +  '"' + blockBlockLabel + '"') else ""} \
      ~{if defined(blockBlockStats) then ("--block-stats " +  '"' + blockBlockStats + '"') else ""} \
      ~{true="--no-block-compression" false="" noNoBlockCompression} \
      ~{gvcGvcF}
  >>>
}
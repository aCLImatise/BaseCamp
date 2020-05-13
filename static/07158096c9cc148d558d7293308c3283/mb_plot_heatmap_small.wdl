version 1.0

task MbPlotHeatmapSmall {
  input {
    String downstreamDownstream
    String upstreamUpstream
    Int minMin
    Int maxMax
    String xXBins
    String yYBins
    String xpXpX
    String ypYpX
    Boolean removeRemove
    Boolean verboseVerbose
    String? parParClip
    String? outputOutputDir
    String? prefixPrefix
    String? gffGff
  }
  command <<<
    mb-plot-heatmap-small \
      ~{parParClip} \
      ~{if defined(downstreamDownstream) then ("--downstream " +  '"' + downstreamDownstream + '"') else ""} \
      ~{if defined(upstreamUpstream) then ("--upstream " +  '"' + upstreamUpstream + '"') else ""} \
      ~{if defined(minMin) then ("--min " +  '"' + minMin + '"') else ""} \
      ~{if defined(maxMax) then ("--max " +  '"' + maxMax + '"') else ""} \
      ~{if defined(xXBins) then ("--xbins " +  '"' + xXBins + '"') else ""} \
      ~{if defined(yYBins) then ("--ybins " +  '"' + yYBins + '"') else ""} \
      ~{if defined(xpXpX) then ("--xpx " +  '"' + xpXpX + '"') else ""} \
      ~{if defined(ypYpX) then ("--ypx " +  '"' + ypYpX + '"') else ""} \
      ~{true="--remove" false="" removeRemove} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{outputOutputDir} \
      ~{prefixPrefix} \
      ~{gffGff}
  >>>
}
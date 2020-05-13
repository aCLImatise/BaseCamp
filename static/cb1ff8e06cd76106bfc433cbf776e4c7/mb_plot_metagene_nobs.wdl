version 1.0

task MbPlotMetageneNobs {
  input {
    String downstreamDownstream
    String upstreamUpstream
    String geneGene
    Int minMin
    Int maxMax
    String plotPlotSmooth
    String labelLabelCenterA
    String labelLabelBody
    String labelLabelCenterB
    String titleTitle
    Boolean removeRemove
    Boolean verboseVerbose
    String? parParClip
    String? outputOutputDir
    String? prefixPrefix
    String? gffGff
  }
  command <<<
    mb-plot-metagene-nobs \
      ~{parParClip} \
      ~{if defined(downstreamDownstream) then ("--downstream " +  '"' + downstreamDownstream + '"') else ""} \
      ~{if defined(upstreamUpstream) then ("--upstream " +  '"' + upstreamUpstream + '"') else ""} \
      ~{if defined(geneGene) then ("--gene " +  '"' + geneGene + '"') else ""} \
      ~{if defined(minMin) then ("--min " +  '"' + minMin + '"') else ""} \
      ~{if defined(maxMax) then ("--max " +  '"' + maxMax + '"') else ""} \
      ~{if defined(plotPlotSmooth) then ("--plotSmooth " +  '"' + plotPlotSmooth + '"') else ""} \
      ~{if defined(labelLabelCenterA) then ("--labelCenterA " +  '"' + labelLabelCenterA + '"') else ""} \
      ~{if defined(labelLabelBody) then ("--labelBody " +  '"' + labelLabelBody + '"') else ""} \
      ~{if defined(labelLabelCenterB) then ("--labelCenterB " +  '"' + labelLabelCenterB + '"') else ""} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{true="--remove" false="" removeRemove} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{outputOutputDir} \
      ~{prefixPrefix} \
      ~{gffGff}
  >>>
}
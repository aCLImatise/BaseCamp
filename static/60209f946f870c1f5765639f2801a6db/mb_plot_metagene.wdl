version 1.0

task MbPlotMetagene {
  input {
    String downstreamDownstreamBp
    String upstreamUpstreamBp
    String geneGeneBp
    Int minMinTsLen
    Int maxMaxTsLen
    String smoothSmoothWindow
    String labelLabelCenterA
    String labelLabelBody
    String labelLabelCenterB
    String titleTitle
    Boolean cleanupCleanup
    String seedSeed
    String nNBsIterations
    String nNProcesses
    String? pcPcTable
    String? outputOutputDir
    String? prefixPrefix
    String? gffGffFile
  }
  command <<<
    mb-plot-metagene \
      ~{pcPcTable} \
      ~{if defined(downstreamDownstreamBp) then ("--downstream_bp " +  '"' + downstreamDownstreamBp + '"') else ""} \
      ~{if defined(upstreamUpstreamBp) then ("--upstream_bp " +  '"' + upstreamUpstreamBp + '"') else ""} \
      ~{if defined(geneGeneBp) then ("--gene_bp " +  '"' + geneGeneBp + '"') else ""} \
      ~{if defined(minMinTsLen) then ("--min_ts_len " +  '"' + minMinTsLen + '"') else ""} \
      ~{if defined(maxMaxTsLen) then ("--max_ts_len " +  '"' + maxMaxTsLen + '"') else ""} \
      ~{if defined(smoothSmoothWindow) then ("--smooth_window " +  '"' + smoothSmoothWindow + '"') else ""} \
      ~{if defined(labelLabelCenterA) then ("--labelCenterA " +  '"' + labelLabelCenterA + '"') else ""} \
      ~{if defined(labelLabelBody) then ("--labelBody " +  '"' + labelLabelBody + '"') else ""} \
      ~{if defined(labelLabelCenterB) then ("--labelCenterB " +  '"' + labelLabelCenterB + '"') else ""} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{true="--cleanup" false="" cleanupCleanup} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(nNBsIterations) then ("--n_bs_iterations " +  '"' + nNBsIterations + '"') else ""} \
      ~{if defined(nNProcesses) then ("--n_processes " +  '"' + nNProcesses + '"') else ""} \
      ~{outputOutputDir} \
      ~{prefixPrefix} \
      ~{gffGffFile}
  >>>
}
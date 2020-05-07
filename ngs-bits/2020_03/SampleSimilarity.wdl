version 1.0

task SampleSimilarity {
  input {
    File inIn
    File outOut
    String modeMode
    File roiRoi
    Boolean includeIncludeGoNoSomeS
    Boolean skipSkipMulti
    Int minMinCov
    Int maxMaxSnps
    String buildBuild
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    SampleSimilarity \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(modeMode) then ("-mode " +  '"' + modeMode + '"') else ""} \
      ~{if defined(roiRoi) then ("-roi " +  '"' + roiRoi + '"') else ""} \
      ~{true="-include_gonosomes" false="" includeIncludeGoNoSomeS} \
      ~{true="-skip_multi" false="" skipSkipMulti} \
      ~{if defined(minMinCov) then ("-min_cov " +  '"' + minMinCov + '"') else ""} \
      ~{if defined(maxMaxSnps) then ("-max_snps " +  '"' + maxMaxSnps + '"') else ""} \
      ~{if defined(buildBuild) then ("-build " +  '"' + buildBuild + '"') else ""} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}
version 1.0

task SampleAncestry {
  input {
    File inIn
    File outOut
    Int minMinSnps
    Float popPopDist
    String buildBuild
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    SampleAncestry \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(minMinSnps) then ("-min_snps " +  '"' + minMinSnps + '"') else ""} \
      ~{if defined(popPopDist) then ("-pop_dist " +  '"' + popPopDist + '"') else ""} \
      ~{if defined(buildBuild) then ("-build " +  '"' + buildBuild + '"') else ""} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}
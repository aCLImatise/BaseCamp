version 1.0

task BamHighCoverage {
  input {
    File inIn
    Int cutCutOff
    Int minMinMapq
    File outOut
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    BamHighCoverage \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(cutCutOff) then ("-cutoff " +  '"' + cutCutOff + '"') else ""} \
      ~{if defined(minMinMapq) then ("-min_mapq " +  '"' + minMinMapq + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}
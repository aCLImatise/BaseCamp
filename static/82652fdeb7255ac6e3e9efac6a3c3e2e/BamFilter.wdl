version 1.0

task BamFilter {
  input {
    File inIn
    File outOut
    Int minMinMq
    Int maxMaxMm
    Int maxMaxGap
    Int mindMindUp
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    BamFilter \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(minMinMq) then ("-minMQ " +  '"' + minMinMq + '"') else ""} \
      ~{if defined(maxMaxMm) then ("-maxMM " +  '"' + maxMaxMm + '"') else ""} \
      ~{if defined(maxMaxGap) then ("-maxGap " +  '"' + maxMaxGap + '"') else ""} \
      ~{if defined(mindMindUp) then ("-minDup " +  '"' + mindMindUp + '"') else ""} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}
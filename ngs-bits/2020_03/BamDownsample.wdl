version 1.0

task BamDownsample {
  input {
    File inIn
    Int percentagePercentage
    File outOut
    Boolean testTest
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    BamDownsample \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(percentagePercentage) then ("-percentage " +  '"' + percentagePercentage + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-test" false="" testTest} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}